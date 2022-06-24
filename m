Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91AC923A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656049012;
	h=To:Subject:From:Message-Id:Date;
	bh=ruIva0Jj4hLJOViPeu6JZg8fgvDnOZjOG9s1qmQEOkI=;
	b=X+hzPFAPxY+B8ptd0c0IVgoKhobkDtyCNzwQA1MuqDn7bVHnconRNJAGOoYdXaEt
	SjGzygowb1Sa9YWib9PshZM/80kNCSEE/RmF9cCn1LLOkxzZnG0z0PhoaPQkFLILY4Y
	q7Oo3uQmAR0+H/wsL7l0c7OBaCpgxzn2IN6EEsho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656049012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ruIva0Jj4hLJOViPeu6JZg8fgvDnOZjOG9s1qmQEOkI=;
	b=hMgymyZ15teM4kwEqTdaKkY6kkKCgZmD+vL92ILOgeFkZlTPPf7NBgvgEEWITBNT
	E6eHjrBIgm9dXDy9CbLP+DkiszJZBHNeC4BwgtbNVeifkxNB2QNreRjlGY+chIO1HMm
	MUm3K9TR8GNWcyIjnKjHrCO2YRsgWyAbKhFBUgeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194368e8a-0bbebe3d-b4b5-4bb0-be72-27a66a340dec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f195dbf8626452275b4963643f027659274f8be2daf07e2b12f25bde0a0175af
Date: Fri, 24 Jun 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656049012
