Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE497A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645993584;
	h=To:Subject:From:Message-Id:Date;
	bh=Lmn2mmWeibUkoZgnLDqYMJDLhV7g4Y+U/mYqO12ZiOY=;
	b=dEtn9ZxMSoMz7S96skmX9Aa2IMzXrwwFBDMYBJBmAJcyyY7hqEQSGKCYyYawb3HN
	t1p0kzIf/W/JdZoNtv4UQTik/f5A+WWnRyEl9OvdHw0SV+p6fxzAGp8wxAYIay0yac2
	cfu3eiq6fDv32y3DmC6xQ5yDq1Tx8Nu7n1SA6wZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645993584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lmn2mmWeibUkoZgnLDqYMJDLhV7g4Y+U/mYqO12ZiOY=;
	b=SEoi7o8MIFQ+nQpMjuz7byu2lIkqZ+5l9e0r+Mz9EHuO7nYAzan5i3OkG+/uIiew
	HE1z0fWQDkniSoea9yNq/tg9StQ8ArnTfpih3tB1T6D8as2fwfKWsNtjhGJqY1ahkSo
	gJJmvNCFFWW8b1e6ohd4VygQ8Gv2oASLUMDiyToI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cdce852-f39826ba-dc6a-46c9-9dcd-f00423391f34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fee4a5eb885f91cac86bf3ac46ec1875891e826fed36b1baa65016cbaf31fe9
Date: Sun, 27 Feb 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645993584
