Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F145368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656388012;
	h=To:Subject:From:Message-Id:Date;
	bh=39v7bPdFKbUyI5Kw8TqNEONI00hqBDrYKN8WzmM7+HU=;
	b=iCJRK4Z41ex3PVeG3gl2hI8mYBFpaRc/AxnPCrgV2EkxC4YAjYtxdMwtnTaZYp1J
	m/X0X+9Lf3mNIaFy/48UADLINfuu2uP9w4qIUocy5oHvqTdo6658xxcXRFrWd88zudm
	bi8QLcR/hMM7vJuYRh/qcpQAj/8gPP/NNyZW1ppQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656388012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=39v7bPdFKbUyI5Kw8TqNEONI00hqBDrYKN8WzmM7+HU=;
	b=dOvVtNaE4YF0ttlVvrtOg1Qlx1S6HjQKyVMPF8IU5JnAKCGVMV/1tgWUHpLY9x80
	33ftxmPVPwBfLBd6sM8dAsrRdPX6EwvvFyBba0LOjFC/EsPotXJz/MLfp/taX7GCaLP
	PBaI49DZUxGBBw+JP8EXk/TmRW2DNpdRbW3dt+Eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a86b48db-67db2133-f44e-4911-85d1-ad06cc82909e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14fdcdd6a160c1fab3ef0d3ce4e43904c43151bfe2a5526d94203f2b1b36c049
Date: Tue, 28 Jun 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656388012
