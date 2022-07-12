Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB006AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657662412;
	h=To:Subject:From:Message-Id:Date;
	bh=DE882+vvMTvQwl54yvXTxuknlUqTiNcqJzTNwv4N0Pg=;
	b=FCrB3fAhGiGZxC/FlQzqqGApFtvWbCdy4c0Ho84/ougqzGyJJWTnpuFLYgNhyXYK
	gSSgTcH5iGXkmqWia2mYyq6B1xwgeM4zepbHclYoJFULmww7RHtXsRlBuZUsMp3vYp4
	3pvUTIJv/5IZI/z1ihKa/aAOH7AUR2parfalsQy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657662412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DE882+vvMTvQwl54yvXTxuknlUqTiNcqJzTNwv4N0Pg=;
	b=I9v/PBdvkb7XvqgjnU+ZhXeGUIeEwGSywuH22q7g5eRIsElvGE4OgSooyurYvuci
	76w31u1rLsHHDR9RVNCRB6ewC87vAxNDSxz3x6eR48HnQRDzeXtFzNvBrj7PYE3rCiy
	eUPu+MgU8I+b2oFEDyWisy69bWLIsLilGZPaviSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4611660-0968be08-4318-45a5-bedd-c7dbdba12384-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4442fdaf58007827e2a16b28f4fb0d2d4d38f9a7f1582ab8d964bd2bcca507e9
Date: Tue, 12 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657662412
