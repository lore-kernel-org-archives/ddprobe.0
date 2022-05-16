Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077437FF
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 05:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652678219;
	h=To:Subject:From:Message-Id:Date;
	bh=t4ZOg6/qTXalOozQ2NFPGLgmFnKr32IPBiblyO01IIg=;
	b=Vwa+w5Flps/ip0B3Y9yAJeIZ3sG8uqKM9B3XwaY38+cncF8uxvw7PCIdPqbkrnJP
	cem53kllIIYyl+YM3uWRVpab6jR1hE2xcR8DRUWdxp/HQSXUlyabYA4+NPPWdJrSe8n
	7ag61Kg7tRWISmpjoK7V5BrqOP8MLylfQL9ZULLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652678219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t4ZOg6/qTXalOozQ2NFPGLgmFnKr32IPBiblyO01IIg=;
	b=XLL+vtyZu+5P0KJJr4ksEB2xqdMpLmn9j+HxybO2U/rosZ8V1CqlSs3K+WCXLk9E
	cnCSzmkyMR5X0oa10lr49Ia8Ze9TjfwasqGqEfTMSLKVJP6LOgeaUsF/eXSVarojyVE
	b77Zq40psk3XNpPDBWXTPHPWbwra6ORRLln355S4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb4c5627-6da96f6f-4cc4-43fa-b85c-975752864958-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a26a8d2963fbdcdcac298ebb1380e94986acf33935320e52ba251e32a14f2df
Date: Mon, 16 May 2022 05:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652678219
