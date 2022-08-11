Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927602F28
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660207852;
	h=To:Subject:From:Message-Id:Date;
	bh=wrxDf6Au8fePcsQGUe8tmR/U5ir4dVHx+Ij2GQQpv+I=;
	b=dfSNQQmCPTxcdvN033eYjfK1vq81VROtPkH8SoTrft5G3uz59nUT0a0k707fpzkP
	Lui/1E532UHRqoBHpDFqt8/v1mJaEyWjmnHuFd4A4vwkkiVYP9Qjt5/dwUXCFR9WYBX
	8whkPgG9XqZz7beCEhf2SNqYRtdLSJm+bScPIGLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660207852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wrxDf6Au8fePcsQGUe8tmR/U5ir4dVHx+Ij2GQQpv+I=;
	b=GQBDNddP3nVOe4ouprntx+cxXa7AUyehS5Iwlg5cWWpp6+2fOJizOollUli1lf4N
	EtOAG1G/L2DqM1Gcd0z1vpAG9o0Ew4hACMl5QiR0Oens8lGtjl3ij50CH1ND1rZiWNF
	p3AVcvX8lzLhF/RMsltrbwxe918GJjWw4x5FQg9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828c196c2d-3c16f597-a9be-4572-8537-f720fc91f0ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a568c3ddaf2da468bfa6e3672e6f593472f5e9d8424d676ef3cc8a5f3b4c1d7
Date: Thu, 11 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660207852
