Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC56E323F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646742685;
	h=To:Subject:From:Message-Id:Date;
	bh=w6B/+PdB0S/kM+Xu5n4au6ZdA4V+ik3UFVn+Y4z96P0=;
	b=gcYQ6mLFwXxdHWuZiNTy2mtDC5tVcig0ZffArY23vFI2SbhLyR1TPN9OvrqWO2hm
	vFzYY41djFbeffUeqp/BX/JjFy3p8NIcw/hTzBsifFgByCglkxJKFi26Hr9g6T1bWqS
	tRJEYOUSUkXrpMg1E4vuX2zmnFLUEAwKmOsMGC3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646742685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w6B/+PdB0S/kM+Xu5n4au6ZdA4V+ik3UFVn+Y4z96P0=;
	b=kufSc0R5NUlWpl1/KTEbFpKjpMT5vjvAvjinnj5NdE6pp7qJWNVEoUYuaQUg7yG5
	WJ628hBNyLN+VuWHo81Fmnp56ZUFnz0+QHOT3XbvKIorLMMUU7aqetIBcyt0lclmd5c
	DjArqHpsKj3pt5rN+zplCJP0j8lKNOUMfPot8KtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69834443-20997c55-a8f4-4bd8-9a1f-a99ff4fa1dfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea60314c15929cb4a6a4e167bbeeb77e609beae2ceba73c7fa2c2a47aeabab74
Date: Tue, 8 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646742684
