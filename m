Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99979290D
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645025485;
	h=To:Subject:From:Message-Id:Date;
	bh=W1ugUjmUesj4KBR40te1kVSxb3A9YNN5D3D/PzjmSwE=;
	b=Bfmeb9VFEwpw/XMV+1+asndu1z2OBEPTOGPMsIO7T88OsquGBl+S8gO4eyzp7Y94
	YWwfcnnP8kzh+RgykGiUJjKhp/LsEukmCBj/j8JvI/9bxwS99zAzg4+WW/YhKQXw9Is
	JlQrZhw/nNktTWi94nT7vV+Al1q2pgYsw+efOZEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645025485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W1ugUjmUesj4KBR40te1kVSxb3A9YNN5D3D/PzjmSwE=;
	b=gfjjgeaYl+N8oTiDFCGH6coXj2dDhyDBJaoLL5ui6SmE45t279yoBytAoEnpxZbH
	/ZoEPPJjQbrC0eZ9FORa7rDL9AefqbtwNSJlfrcUR7lqF0282trBL2CW32uXT1eRUFb
	uLIgJu19Q2Ch8s+R0d2z/oI7B4e9lc/yeLFQy2wA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0328e003-b4e1afed-0a58-41f6-b641-8dda13f0ce1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cae57d38a55eb4bcf97621d10a831c665821819991488407b7484da2ea302a2e
Date: Wed, 16 Feb 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645025484
