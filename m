Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB07E7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645917685;
	h=To:Subject:From:Message-Id:Date;
	bh=JNA3wzjEKacqeRjeIcTXyShpmQV9QVEXNZ6mVcwg4jg=;
	b=F2dmZQmVTGb4TJOPt10ykDyYuDzLX/BAoZqwUS3XSNv1uLOLUrcsAsDRagjFkBtt
	bsluHkPAwf7xBHLhElZtbSke8vr8qkXQ5xOu4GXSEcvN7iCEmmnfthpdIP5bBPuwURr
	wPIL2de+TWCezs0Va9PCOYKY4hBOfokIHGOVsuDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645917685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JNA3wzjEKacqeRjeIcTXyShpmQV9QVEXNZ6mVcwg4jg=;
	b=hvzt5+Z/Fw7DwrXeNL0wWb+jbLAZXrb9T7b8m4FzeBT6W0z4n/HqfWpl7f4nyjvp
	D43TJnBUbmSwAM6cbOh3Aw/nu2SQXCPkPgrGGO18D24MWMo4PMutUoO6XvhgJ6A/dB3
	UZL9/IfsSyI8Cnd1dtjDVp+LbcVe51iMakeaRhq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3856c414-617f95e6-31fc-4f33-9833-dafb2eeaedcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 859036f334f95448f1dddc27544d9560907a8a7d65fca06d324a25ad6722242a
Date: Sat, 26 Feb 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645917684
