Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2951A7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660852252;
	h=To:Subject:From:Message-Id:Date;
	bh=AVKWSJceZpapFarp/zRN78m+gP+k0eYZCHPIIRgupHI=;
	b=YDsuCnAe8hGv1Xktoh5U/K4ufZYkuJ4gs29Uccn6jvnoWzfST6qIiVTuiAOa83gc
	riRGGRuhCPSiu2DK5vVEEMWWt7oNwrjWnBdPioaYsXZI99UIwVvu+05kl8sDOCHlpgu
	SOhRXO+tnLMKntfdKmEOkC4rVTMWjYLf1jl4GNJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660852252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AVKWSJceZpapFarp/zRN78m+gP+k0eYZCHPIIRgupHI=;
	b=kYJViZiQ3+I4z4y8lX9YsqpznYW1rWQB2cE6k0KUYNXHmJV3VYTDfSByU47JHork
	w0nXQPBBY/dim5g4gAmPtfWlTC3Gk8e3VlvUyxiuvQXBajYDiQfy667I7sBikZdFfcK
	B0LBe9KgjlEdNTPu/51DWV1adi0DbPSAqL1t/yoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b2822fb5-c4a43b88-367b-4ed1-9408-3499541e698b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca438f828d3d8d9db5687eed106484d33ae4b8ce0f645c285cb022d7b4f4166e
Date: Thu, 18 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660852252
