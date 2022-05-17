Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172E57A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 20:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652818379;
	h=To:Subject:From:Message-Id:Date;
	bh=ijlCUQObRG2LmP0FNFpkxDOvpImHxkqVbK28q9GZmF0=;
	b=dviamSTRSm6xWHpuAFGDrCmtpB0lVlAFYy/sPzmPEDReCT4Tu34jK7EVsdGdNPWK
	w8uE/hf8vj4K4vF02L+30Ua0CK6YPONxhlNbIwfIv3D90ZMSqpQEMt7eaj4hKS5FGEQ
	j2a5EHg9w6bwSAXFk9vjRup+IjrnJ6YY4Xf8D7xc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652818379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ijlCUQObRG2LmP0FNFpkxDOvpImHxkqVbK28q9GZmF0=;
	b=LM2Lm7W2Tu3kzEPZ7AVoTj5cIcXZrSypHSJQFueLP64j33aopEI4beWqZNQwYsj8
	X7QO77fTCkngd1E1SuOdJynVAVsTrPYPFM7qb0CeFQtetZHrz90afrAqfEU75PYcobD
	q60QBEN0uVWLNHJAENspD9SVqcuXgMKcg1qltB2U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3a701f3-4e81bd0b-71f3-42c3-91d8-717dc1665b6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a73f3c08a50d06ec7f864a983a0022dd227160e6e1590536783db049d134231a
Date: Tue, 17 May 2022 20:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652818379
