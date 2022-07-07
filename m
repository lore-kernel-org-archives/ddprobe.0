Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D856D647
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 14:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657205212;
	h=To:Subject:From:Message-Id:Date;
	bh=zQuuuc+yhad6Qsshe6vC6jD58H9XIgPyR95/Moz8BEA=;
	b=ONrN+iMBNEGGzgj9k6ms5Y4z+bFzMaiiOe9yP8vRfLc6YWY7QQtAKeBPu9GcfLAl
	pwu0cFqgciLSQSpPrxHy0rdCngWy+fSsMfxCNKC9DJ2JyD76YbxSGqt19umhuiBS9fu
	ft+dTIVA/CHvxVvk2Fa+0RaTwnmOWjaQuH+FC+0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657205212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQuuuc+yhad6Qsshe6vC6jD58H9XIgPyR95/Moz8BEA=;
	b=QkpkrKcjtik7XIquaia1mdN2t8gI2WqdDCZcGRi0NdHej3cDg6rYyqk9jGybUjuo
	lSlHoJOrrJ+PXEkhTNJ6YrB3dXUnO92x+pLrV0UfxGyy6NkgtO2+4XofgeYM1WlHf2i
	YpNGI2kmgN+Aqw64Tl4K6nGRona1LR9u8LX+S04k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d920c482-c8c5bc1d-db5e-436f-8349-7743fd3468f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 649be6fbfbeb32a6e36ee9b1434e47b0eaa6cdf94efce43b726ce87fdffa6e3a
Date: Thu, 7 Jul 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657205212
