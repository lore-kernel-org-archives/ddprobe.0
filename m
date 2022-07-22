Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F74C15A2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658473012;
	h=To:Subject:From:Message-Id:Date;
	bh=OlQynhVye7dMKrM/rLHj26DhSzsLnakYgfCe+nIFQpA=;
	b=MmS0goUp2fs8YguLUN2bsdXNNPrTKmcT/iYDCyhrX35Qxu4pBCZaRX40541FKjSh
	W4meoLKZo6n7cGnhljdvA4yo1mXbJF/EP2EK+4thuqGag7Mhb7pDcjsW+t4uWTT+9LE
	T+urTlrcM4/LCs+wNl8l63QiVIcGHaUw/u/Ptin8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658473012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OlQynhVye7dMKrM/rLHj26DhSzsLnakYgfCe+nIFQpA=;
	b=Efb7RpQ9AKkMd1pzVQA7IcLlc10nPQbsE+XndVTkXmibZ6WH4xbjj9vTLfZkmkkP
	9v1D/l1aFft9iboANnTtjY6dK90iL/NiXDY6lpTA7mS12x0g76acDudrdt9/6mC43ps
	l29LSfKPR1sfM2vNHlMdrsc4i70MTqjUkEWkTxR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018224b1dc1e-d27ae703-5108-4089-8ede-1c4b2fd716ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4db8d8d25fdb63294fff445821e150940511b8639b75fdfc76bb0df538d4ed1
Date: Fri, 22 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658473012
