Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10985658
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 04:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655699219;
	h=To:Subject:From:Message-Id:Date;
	bh=WYUDeWb7GFgQ84MOXIn0Uuo5d6iRlijdNcvxrGNGOBA=;
	b=B9G0r0k1DjZodjM4YQ1BdMLttzzqyPgHm3KglT1dZAU1Ygz1Zrixi+5nWn+36fEe
	cmUMk1SDIzbSAG4r1m68QKhwaT4cwvMhOKb13Lgzn1Sdj9TNg8SERGRErW6tEGJ32HW
	hGlwgJHRK1C6DXth6ynJJF4n1JsO9/oZPV7kpfL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655699219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WYUDeWb7GFgQ84MOXIn0Uuo5d6iRlijdNcvxrGNGOBA=;
	b=EoksSpo3us288qcYv3l5zsjUfnGmBBo9OrzU3afxDkvUka9Jnf5v4YIj42P0Vrg0
	1ey1EC8q1ZZrcVjje9hr4tmIWGyqVaL7dTEMz+RJRsmXgwBI6Gj9rXaUZdk/HzUhREu
	dJniAR0WK4qo734FGOyAj+18ZGNlhFkJebl9oi74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f5d235c-6cdd7560-1b25-464a-a146-b760c2b7a21f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a4f80a931e88a2fcd49c587c8fff463f68d255f398fe48e1fa1bc87cfbfb0c6
Date: Mon, 20 Jun 2022 04:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655699219
