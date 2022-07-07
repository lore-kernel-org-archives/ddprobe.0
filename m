Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213567C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657211212;
	h=To:Subject:From:Message-Id:Date;
	bh=wAERCRQkxj+v8tuDlzKgTEmXhhB0aJuEVBeQDpHkP2M=;
	b=f8KYPf8hPtcYzIUshcNqoqo0VHYJl4X2S2U7XLyoauasOYEQRmFchL3pN5TokcLy
	VuLinrihazA7O1pSxBvxAuEPy/UkkvKBBOovzvPYqdlEH169dEi21HhyIsHA0oAKjvc
	7tO54atUAIaGtdkjUERYCDspwV88YHxi/UBL77Yo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657211212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAERCRQkxj+v8tuDlzKgTEmXhhB0aJuEVBeQDpHkP2M=;
	b=ds2pbq8hsSxdXHquobx/s11txsXhbBX5RY7hXYWrPIVrxoc/4RZk/f56D0gmQ4mZ
	OQOUjmckC8jjB6CBde3jLjzs1vdPL2nBbaIJT1pvj1uXc1+80uDFRfFOnhBJPx4D9qG
	SCVSysid9FEoRut5pgn2nH0/vqWw82kEmRYRwXKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d97c522d-35dafb23-54f9-4ffe-b46e-a6cb191b5aff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e2d0f72aadd59678940b3d4aa564ed4bf88926ce63b8fe89ad3fdecbff7a866
Date: Thu, 7 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657211212
