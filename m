Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7971841
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659837053;
	h=To:Subject:From:Message-Id:Date;
	bh=P6vcMWehPtlLbqqypWLRL58AqffFyn9UdDW/kMladts=;
	b=Om+6mfap6g+Hrt+M3uTOfOpEcXocPh1R1Y2S3Rs3ZYtMz6wKsg/+VRdrAjQdEtg8
	HVlmmDx1t1Wk2YubdX5myv7Gj/zJID8e1San78tP1yNSErhXpb6B4sqsneClHjcT3f2
	XDd7A5ssfrNJOXdjDvaBwcucN0/04G7GYzFNWzuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659837053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P6vcMWehPtlLbqqypWLRL58AqffFyn9UdDW/kMladts=;
	b=dW0tYqhs+YVTjpsvH6JN9zVazsQfnbs+b5QGi96QrvqtOwkO5LwCbjy2+UPcor66
	GqtiXbqJsQfxP0tpRaAawwOk2FPit0Z8dgBN7WTEfR0WAkRvVWTXkjTSCxsAPulwHlS
	nHathPMlEBaQXW15HNUe17KVF1Kx6HDU8MlivGqc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275ff76b7-0cd902da-39c4-4b40-af8e-a64020336420-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c448c42e253a9cc50b92c08c4bc2bdd276367fbb78b8a2f79273ec7a557bdd37
Date: Sun, 7 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659837052
