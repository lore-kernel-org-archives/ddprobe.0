Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCF7623
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 09:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649410618;
	h=To:Subject:From:Message-Id:Date;
	bh=xlNvg0aExPzQBYc5kzclpAUNLl1HsghP1dbbqqscyDE=;
	b=mBo89nNuwJ8uhVy/X/qUllcONv9S8v6k4cExL/3Z9Eu9T/Slv/H9ydhwI+t/8UqK
	CbIKm30Ut7rlLHDkKaM7ORpMVntwVcc1p0MODjWtg8hB5HylCcBaOqKWCRA3w9y93OL
	1dbd1cxvz3LGTa0eABZ8i9hsQEMTPvjLz5l+aWdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649410618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xlNvg0aExPzQBYc5kzclpAUNLl1HsghP1dbbqqscyDE=;
	b=UEgGD5W2+ddaaV50O9+ZELmrQElVA16Z0V6ldFoBm64wStMZ6QUm8rwrb68eQlin
	04ZsQIQ8mZG1DQr4JpkXoHAW2W6zSGymn/tEWgG36LAM+9+5eVaOvydHbsXuOovqkIA
	e8XIMfWmsZuh3L0f9FVzmZFePmlSeUr0mD4tSAtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800888b386-ee630b96-6be1-487e-a414-d4415d6600b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e3cce832ec630763128d046f08ba3f07401a124bbbe3d6fa5266a9cc3eaaa61
Date: Fri, 8 Apr 2022 09:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649410618
