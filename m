Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF5A28
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 02:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654222919;
	h=To:Subject:From:Message-Id:Date;
	bh=nt0zFcc6eOxtOnwp5rAkFCabpu+Q/J5RhRumFoXgYE0=;
	b=Tb3KVFCTq3LSukNr3mytxgfbEQMuHnpEzAe49//CXsYMU6N2PAVPbZRJYoIN0iy3
	oRZDGrfm7CL0eYIhMHj14/0n5vay5NchNO1FlRxdJiCKHpVUjDNg2U+jKc0FnKvG5Gl
	e8F8i3MJoBQtMnyACCVn5YPhzM5Til6vXgSkq/QM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654222919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nt0zFcc6eOxtOnwp5rAkFCabpu+Q/J5RhRumFoXgYE0=;
	b=NgkMRmk7PAYItfcMIpfhv+jmPJrjE6DU7X5ZxpPvA4iKtZSa+0MV8yqtg/85PP2X
	m/NMDUsCv1bm3PL2bzFYEYs//qyse+2twK65uuiInMo7FZAZDnpc1hcfpgD65XP1QC8
	1FgzNt7VBe/sbKTBWi0SmSu1Zo7zg8qRpKdbUvkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181275e9671-d8117d42-4672-4d3d-b307-de29401bb8d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e0d90cb6eeb0c9ed378017737cfe95e0fa187ba6191793850db168ea9ec9817
Date: Fri, 3 Jun 2022 02:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654222919
