Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0517F15AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 02:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653014759;
	h=To:Subject:From:Message-Id:Date;
	bh=wSRkjV6eDJMDxrRlux4J5zXKFYasG2oa8/B7xSZnTIA=;
	b=iI/pyp25ggoSs/SLw2ISr1nwyJWMCT5j+gwi5xtppI1DqHrPt8OzZk4iZT6PhKlS
	0Iwx6v8UzHAEyCMcJijjPCUhShy4Bt+S1wpw3IG3Ta+zx0anhN2OHmesh38aEYTrVYZ
	WbLWBU2iFC/JYlhp0ry8PDou+tc5vKb5rU+AkW6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653014759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wSRkjV6eDJMDxrRlux4J5zXKFYasG2oa8/B7xSZnTIA=;
	b=C74H4hH/3y1n54uEAQepWCz+U1yhFkYTZwcC5hMKrlqLQKvxjzRFjVbj1+EHXBHD
	fIYOEfAn2K7mJYW7OE58LAH/bxmYoE0Pr4f/pZbdPrgsX8PvZ3LehZc/EJUmJ9WxRbM
	g6lM3EwgNiC3BRR/6x23ViGsA78d4RCFhUQxqHlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df5b875c-9a914cfe-24c8-4f17-a3ba-eba19549fbac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5bd0952b91a8e451b8b184ac343bf160a290d0ab8e66af2b5d68171605791b1
Date: Fri, 20 May 2022 02:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653014759
