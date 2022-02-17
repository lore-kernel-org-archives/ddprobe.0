Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BE723B4
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645066885;
	h=To:Subject:From:Message-Id:Date;
	bh=rTwVpvsTFPwKdyLhBUWcSt35kS7LV2i3+XQZNvVmCRA=;
	b=ZevlZggY9+hKwP1IeNF23lVvTLbgJUPTKFDTeuRxuJ/H9T/LKrpWLWJRMrVgEwjD
	y+rpwxP++9K5FqXKVKYErJys6uOJ8uaHZ8CNutnFHb7DgWsbbOmEVdGts8FK0Ndg16a
	Pjgi4KvsEfaPvIWDk4LvqW5Ck6Y7Cv2rYbQVlmDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645066885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rTwVpvsTFPwKdyLhBUWcSt35kS7LV2i3+XQZNvVmCRA=;
	b=GlbeJoBYhc1oTYWGY6/HbSl8Eiifcw3wqfTbsWTzJSuEwOz9wmWDzw/8jMygJrRj
	hQrJUb2TyE9McS1a8AukY7CHuN2CU++54P6N7TdSLEmtIVoEcM/YWRoZ08lyipkrqpa
	3DBGy2R7ujd/qr7kDrD3jlzVXidkfBg+1llcQoWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05a09684-343832ab-b0dc-4656-a55c-1eeded3156df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2b8e480fe85f3256ffaffae91b2faa3ab8691734d13507ec743625a91286b71
Date: Thu, 17 Feb 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645066884
