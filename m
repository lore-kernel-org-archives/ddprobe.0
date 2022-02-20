Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53044613A
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645399884;
	h=To:Subject:From:Message-Id:Date;
	bh=/tEQAMGtfvJsguIOgCi55DLB0+TtV0dej/E+C0ugrQQ=;
	b=m4Kvw5LGlk7/oCDEZSwwVn/TtJ3oZBr6fOhGhgKfiZnhNhmK41ArjADOEa1FAoTR
	GdrZdd6QcNDpG4PNCN8l2O4TWgfSpk6DNMn+JpyNlrhecTpK+r7O7k7q45UpNpu7+0C
	EhsF0uy6wCT9wXfBRfUNjZIguMH0qas3FbF6I+3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645399884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/tEQAMGtfvJsguIOgCi55DLB0+TtV0dej/E+C0ugrQQ=;
	b=KRvsIQyULTD/uLVim1SqDFiEVSg9z9ZLnavXDbsWwzubAh9J6P49Y5uCG+8TC9iI
	rh/r8BapWNHN12KPQrDDincrMHXJBJN0t7wBAmXrLzLV3Phf2pWKHll9Koz2PzDleHD
	4OxMEVIX+DMmKp6fx1r+Af/Y1eps177aPvEaPFds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1979c3b3-6b1d20b3-524a-4eca-b57f-898e8a21dae2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dad0863bcf0cb42f53084aaf21b695baced3e16e3b2f6ab10e470f76e2362b55
Date: Sun, 20 Feb 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645399884
