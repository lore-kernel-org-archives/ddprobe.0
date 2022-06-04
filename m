Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0258210F5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 03:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654313219;
	h=To:Subject:From:Message-Id:Date;
	bh=tcUZpIJuuvZx51q7jttzI8Jk4EvDwcQwWcqa7XoOJ3w=;
	b=O6G3JrbiaiiVj6KXzzotPubRK3FMIwV96zwI/QyQSv+s9cGqe1xwAUn/0lBciurU
	iURHlllJDieoaCQZkCKit4Sfm0J+lJErxSMVFkerms6E9BIOVdPOrL3nOdE4v2g+AnO
	ZaxbzqyqeiTMa3nNBEn3UkFDPpsZuviywCIVGHtU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654313219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tcUZpIJuuvZx51q7jttzI8Jk4EvDwcQwWcqa7XoOJ3w=;
	b=E7c02MKTlp24Hb2KYTFfUyPuvO03hauiHEOlyd/2TAbsfwPsp8E/TQwHktEIInYt
	Ktq90V6+7Eyjl99fIgox3bEIrAYMoOwNw20OcqNOAfPpoXE1y6R0xSdFn/TtB+CcxoJ
	UwK+2g5zd9YmfxMwu2hfQijtbTqsS+IVwCLYDfBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812cc074b8-95a79539-1095-4318-a0d5-3c95e576a0eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 177d34f7caaacada66a391971084e228c77b1f0a506cc24f196ae8a51b001232
Date: Sat, 4 Jun 2022 03:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654313219
