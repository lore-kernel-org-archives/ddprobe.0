Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DA31FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657564612;
	h=To:Subject:From:Message-Id:Date;
	bh=paROVm9QYkrrhemkhyMcGBGjdQDnINKGsb8AmDEyPio=;
	b=PT/LYEPDTASeOGTmZfBmwY8qzEL9Tlg7UmLCk40aaI059KtFFVpeYpmrN6HRrAZh
	JVHvk/6i//RIDI5EJtOL6X1ezPXOvPLDknluUQNCUrXjMcZjS2ykuB4rxNP9/TkS3Ht
	EqZoL2qZVUxQpEiPBbhsnwWW1urNMKA25kgvEaZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657564612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=paROVm9QYkrrhemkhyMcGBGjdQDnINKGsb8AmDEyPio=;
	b=HnoKippjRJSuhzLCI0RoyYA8WmYQAhWktrMmGW2ktw+V16OfJwylanKv4E/XSjlg
	PGOgfr58DMsNhpZWK7Ta3dmdG8MX7XEHu7FEU0+qiRzqF5pDLHzzEXt14f9bz+kSqRn
	WAFVR/ChXrbXRGNYnuPc5htGyrCMUDzRweSy2jjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee8cc6ca-40376647-af11-4c0f-823d-a2fff991ed1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe65cdd2bb5dfb40310755cb404d47e5ad384e436cb02dcbc26f04e79acd47ad
Date: Mon, 11 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657564612
