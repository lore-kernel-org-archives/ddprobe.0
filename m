Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85ED2568
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645437985;
	h=To:Subject:From:Message-Id:Date;
	bh=zMrPBdl3em8mXLkHyxFYyKsXdNxuHicgLNQJRihwOXY=;
	b=cksd/dscC00CNEabVJ6XUfwLk6JbmeQN4HEIBrb7OqTbwWNwVCWZogML7M5UcyLp
	cZ7MkWGSBlY/VqLc8evGCRkDuJI82cxNJv5qpy2NapYouNkDyfaR+NEYXD0kvnpI84E
	lrFcf2+oi51B+KzFfH5H8VkOZzW8XwXa6PWwKQ6E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645437985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zMrPBdl3em8mXLkHyxFYyKsXdNxuHicgLNQJRihwOXY=;
	b=VdohQ6yA8nGSoHJJwg8b4ziTyLC45uenUldOuE8IaHdRSjPc97iGf94A4OfaoC31
	d46TgFka1zi4k8ljmPIdWnQiRM0sqBIcMWJ+LT0uBmidEVU1t1/HsbbkJ1FSRoGOBYR
	hQLyZKdhiQAwFc+aPfeAnGuYUy3lHd8c+HqOT2Rk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bbf205c-ebd9e0ba-4c57-4eae-ac3f-19e863f5bf81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2089fd9a544c6578c5184a4819c860a448dd0aed183499ff3e0e387c4ed2f43b
Date: Mon, 21 Feb 2022 10:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645437984
