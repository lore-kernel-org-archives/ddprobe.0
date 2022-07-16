Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD79362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657958812;
	h=To:Subject:From:Message-Id:Date;
	bh=Y9X5eV71/UeRpR8Jq7GXJA0OpPisrCx/0vdqJdtafiI=;
	b=eDs+aI8RGu+1tRpAiqlL+VSzgPWtH0+j/EzrQwbDYWYQIC9nayP+zydtbkIOulZQ
	eFzXpq9/vNGM8NKU2x4UBtbNh81jFf3FKtP1h0O6F8on0WogqYemxJoQR5kQiIoGiLG
	TWaM59Bg6pxoTgMV++bHuHoaO9IPmyNPx2tR0sBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657958812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y9X5eV71/UeRpR8Jq7GXJA0OpPisrCx/0vdqJdtafiI=;
	b=g9ilq0Rs5m4fvOTRMhp8AOsO4klPXnHjdm+Y1GO68FeLOL7M/UNlkrREctZ9+cIx
	zvJKHi2/cx14CTcXp1jJW2pxILT7vOxXoNqFyxAnu2aVtZNKAbV6fThmTFA5mWHIEJL
	/ZJ7HB4FLFBbQZsN7a0hDXWi7EBDhY/5ViZK2lhc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182060bca85-a06680a6-20cd-461b-b537-d1b10f2a140c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 521c4e60430504d0b5a2d231f4fe64b07fa3b206dfccd4158f22c39559a841ca
Date: Sat, 16 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657958812
