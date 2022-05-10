Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4351728EF
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 13:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652190299;
	h=To:Subject:From:Message-Id:Date;
	bh=CEYqxMNCEuO2CUGgzZnzwvAobbWzgsOYAOfDTD78yMY=;
	b=URS0jVT3yZ/uO85S4O4oMCT0mhobMTKPZgHu0F/VrBTW52VZHaH48KiYLT1T+j80
	OvwxE0irXPPUD6Y9RVO3GhxXkIRcAMOQlzu9png6ziGePEvDB33HEgM3I1RbmKowD6C
	Y12DqUkTVWPZ5gK2Lj6I2zmw9BkABZphTjgMwvvk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652190299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEYqxMNCEuO2CUGgzZnzwvAobbWzgsOYAOfDTD78yMY=;
	b=AZ+ITNSz5X8wbHQwW5bOYIz9TKssYvDcPicmKlKNv/v8nm0bNXCu20eSdVUfte93
	4zX01rT+UlAtqSzUupp5O6z9zsHi2VPpQXcDFvKDT54DMFSlUBoMBkyKw5q9FbBpQ6B
	J5V/xo1xXsUyQpogMQxMwm9W/UR5PdGdi2sJrW0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae3744e5-4a8b475a-8548-443b-adeb-82343a48a763-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3980c31e416ebeae7994af59a2d7c94b40988103a95f8fdd7213554963ba3bb
Date: Tue, 10 May 2022 13:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652190299
