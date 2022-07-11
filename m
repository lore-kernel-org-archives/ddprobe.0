Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3761376
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657522012;
	h=To:Subject:From:Message-Id:Date;
	bh=+GASGrXoFhWvtXEqOl72b0PEVC6gnGfS3tEmEKhUiYU=;
	b=aU64P5zVckoGiHZ/C79Bvr3kU6utXn0YrXQ3QwCgLlepW+UXpuOTpI9cjZC5mWV0
	C8NK8ou+k+gqefP0ybuEIHQtYQm5NOwb3qWJmX1srwmqRPiyEkYi9MvcAGcW4oBpj1V
	0O/x2ZlzksepM9GIV81n1/GPtfHDd8n4/qjsAujU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657522012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+GASGrXoFhWvtXEqOl72b0PEVC6gnGfS3tEmEKhUiYU=;
	b=QGoi1Smn/LCEEt+BaGVVmTULIz7FqzsGCeqBNOXES0ErsuT7RTmJ+0XdCEXWtAx1
	bvHRJkPDVVyGVhrouPBG+AyO6bD5bCSdLmZ38wZvx1pd+SJeQdiq5VMul0RSgVaYP8O
	sRYrNEuDSYZll7eF77mDSr4FDMgN3XD0xepc4SWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec02c069-333143b4-4c44-418f-ac85-57d579e44f24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6e480cd358c6690193b05a91f4559867e448132c8c6a21e3f40c5eed21e7c94
Date: Mon, 11 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657522012
