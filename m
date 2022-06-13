Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCEA10F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 06:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655101319;
	h=To:Subject:From:Message-Id:Date;
	bh=XlzZVcfVEzLG7o7s/aJDYnugTL9Y1SqT/orkLxxPBkQ=;
	b=evkFPve4iHsJNFYT6idHuFc8kfRP0HhDn7GnU+fkWeppsX0l3ctm38cjS2KU2ETu
	2GVwcp+1k7i6vq6Rzn6MCHMrnsoxYXToXPlXdQW965h8ZAlajVuPjWmO3cXWmFVJnU1
	oas30xxEPJTFsi0F3lp7qHURiz7yuI5Co42FRuHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655101319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XlzZVcfVEzLG7o7s/aJDYnugTL9Y1SqT/orkLxxPBkQ=;
	b=jOo/5js8nDimgvz2n825j3YJFsvDfrrj0SYStCaLBoshyeGk8CRqangSLH03rH0h
	6bj/NDSOiaoxjOHdDjQKPh4bn6w3fKoDwvBNAvmKUUXDIorUvWLwgC7bbxOXDEkzpKK
	CxBz3cZ1FfPLmXzd0HTsMSRF3Zcql0pafYrWB4gU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815bb9e8a7-fbee8c95-f463-45cb-8be0-21c8c6bb8a37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abe96670aa51c1cc3949ef664961cc5d6654e8dd40d326fe0f703fae4430edce
Date: Mon, 13 Jun 2022 06:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655101319
