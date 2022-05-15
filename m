Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080EFA5C
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 21:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652649479;
	h=To:Subject:From:Message-Id:Date;
	bh=Ff13rPFqw0MXYGdzPzOLkgsjJsknagAyamBlaKBlp5I=;
	b=ZB8po9W2GB3eyTDft6v9NAXtwAHJJbH7kF0lUIhq6rWKrUkkQBMV5VNKS3Oap4y0
	jiYzqrrooHOf5EzH6+C9o0wxFY0elGvoUTRQyxb7RrMK7Wa20hPbg4DFZ13Lyutbfrf
	VojzyefnkzSGizeDbfv/Fgk+kBh/MrLLVRC8zMMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652649479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ff13rPFqw0MXYGdzPzOLkgsjJsknagAyamBlaKBlp5I=;
	b=eZV7Lph8YM9m9iGdWqnzjHgF6VFcxNRaUcbokTR0IjlG9bnfmw40B1qxR4mfWzoM
	n6mBtRHKoTei1k+8+IwAwp5Tnx2lx4pxjtU0yjRBw/TPU6Qk+aFyVfJ7KrF0XC3BFrk
	MJXiLbJ1WDjQRl/14IxMO6AwrmPssQ05N64SBr4A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c995ccb2-5bad6c94-ecf3-42e4-a366-b75d4c52aa40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0870cbd40f2cca329e755e2079b7db9b4ccec783f6b0916b2df66ef15b174474
Date: Sun, 15 May 2022 21:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652649479
