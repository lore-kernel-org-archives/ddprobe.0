Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEBC7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656933412;
	h=To:Subject:From:Message-Id:Date;
	bh=RPKNyPVqEA5IPa3Af+HlXGrlGMTGKk2nS2PeaFOAY00=;
	b=O//OTUTElp+wdmYKNc4yvvFRA56+ET7kDctuZa7hLojonKz7c3KkGB9xFnNNf3Qs
	mWBSM19s/Sese8LWYPa6+rY+BGaAiWfOb1VT60S/6XJqYW9ljqFll1LOjEgvIn0KMmA
	pXzr/VjpvAUVzP52JSc10XI+lD5SXEdhoT4jvt50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656933412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RPKNyPVqEA5IPa3Af+HlXGrlGMTGKk2nS2PeaFOAY00=;
	b=AoGUeXAEEI1ivQw1YitRVvvGVB5DxvpeD9m0yTUOHPP2amfDlpjeKgNTeuQVfaeX
	ApFZ4Tfd+fxLnKvmiSYtJmOwBgyqlY1ubrsyozo/rEMWpzGGhGAA57lP/lvnOlFpRc0
	3dlCosDLGBvNcPnLke8p65l3vmaOttNb2alQneZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8ed6db4-481fbc46-0b2e-44ac-a9c1-624ca41f66e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 659222a3f647d547428caeb2b7878edc6317d45024d811d341e2df8ddcf2e492
Date: Mon, 4 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656933412
