Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036B32C9D
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 21:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650231598;
	h=To:Subject:From:Message-Id:Date;
	bh=MLleOMcv3vuQueNMfc95MMs+i3DJTABd+YAUlUluxYQ=;
	b=g3wvwReDHHS2GwquKRGdrDAwfl0+6gxqbh/Z3dux0+Ml9zZ4Y9yHJNkupt/VUPv3
	B/Hr5a5shEMoawQY5zqWtOCf7NvuVGt+F6aBOD9DvYHs08Mal0VbR6PFv8mokvn9CGd
	eETlII+Ic7mu68/uGEzMKZYXVARDQBqbFE9qJRv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650231598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MLleOMcv3vuQueNMfc95MMs+i3DJTABd+YAUlUluxYQ=;
	b=OtMVCMMFXeFnH8Az0q9NMb/XIuW5+4249aop3BodF/RsMa8U7vX/ltAc2ql7VgqW
	khxbcgHUg2Yh4t/GBp0e/pdbOKIO4qG0Y2S2RLVvL1/NM5SwAKo1hZEK0G+ci8YVXCo
	Kne2GnGQIrOFDlzgUWUSZLbksgQ1xMivoAUkakGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803977dcb4-9e738f5a-1ee5-4909-9403-81111e632a50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56b145cfacf951f9227a2a2d6f5f34d555bfb073a2fd24197df199b7324724c1
Date: Sun, 17 Apr 2022 21:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650231598
