Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E5823AB
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646577984;
	h=To:Subject:From:Message-Id:Date;
	bh=ba4eypXzAoHUbMvwDOffcCzFBDk+oMGpHJD3qB19TFs=;
	b=EvBR2VV2l53MxVoMXDUXgPrqV/8Nz2hqH+JaUsyVrIwvn+3YcpkrUD5f06qMEWaW
	LCoDVRcQ6u4/IFiSoAyGo/dFZmnTMN3HeXJeXV6t2tl+ZpE1fX7ZgS9DM0BHGJY3SmN
	8WcskUmSuVKDM76B5Nxi9qBDzXPADYEfAAnCN4ws=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646577984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ba4eypXzAoHUbMvwDOffcCzFBDk+oMGpHJD3qB19TFs=;
	b=aWe67F//5yDwUeYNegWW/C5yc0c1OzUeRPbPSSKy/HP5YXXIYS+CP8jinB2R2/Hr
	XBTJO73Fysn2E8GA1q90/0qQ19Fl5JMVXZ1GoErWrpAb21HXt9rFyJ2WBC7ZXP4ELyH
	V6i1bEiNN2KAmaR8ymfebH41e68YaI7W6FDAfJZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5fb224ef-8a434c53-3bd5-4556-8d84-5363a9701969-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b250305ef62d4292c20764479aeb02726c4e44e0ae7c70a3a3b8bd4df8120f6
Date: Sun, 6 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646577984
