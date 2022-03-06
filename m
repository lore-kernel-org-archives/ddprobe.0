Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763A27A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646593584;
	h=To:Subject:From:Message-Id:Date;
	bh=vnuL50M5nh6gc4E5syr0YUL38GKb90Pt5kd5028vyqU=;
	b=KpeYkMl9ulp9fU7hivTszzlsR5qfI1B/QInannQZdF+1lt9yr5rcmA0rPKDwmx/L
	BL8IjGPUYO1aL7Vd0iwYl3f+3h06cB7SR6rv5lW3EliC1jxY6+BGpZB2onRgg3D8Qw0
	UStJvhzNUEeSaf2K7pCHF0U6/gKS+BAj/u/o0Lgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646593584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vnuL50M5nh6gc4E5syr0YUL38GKb90Pt5kd5028vyqU=;
	b=lt3+Dd1amSTPTzfH1hC6UVsjOEqu9LV9UGLDFoJnF8895vOxBdZl65WmfLFIZ/Ld
	Ugm5XkQuD00uqd4ENovFUCdZwnThFGYMwyqJ43zUQsQhNxYStvxLSkQzOCILmZQg3pB
	NFDYEAdqZXibhVn60ZXZ8eVHWB3GH13nWBzee6Fs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f60a02e88-c7c173e1-0ea9-4200-8383-619d624c0633-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25036b46c9a48e558d7401eae64de05170a7b41706987d7dcfac04030bbee1fe
Date: Sun, 6 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646593584
