Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F2E362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657957612;
	h=To:Subject:From:Message-Id:Date;
	bh=bs5DiHMYONydrTd6XC8ahNTGCemrrGE/eBlhmr3vCUY=;
	b=X42iqn3UTn+5OGpxWe9OFUjFn+JhiHqMFF1fafG2Bw8qPUHPg/sZYnpnf4gOGIme
	dMd+CIN4tyLhreO0sKphKuW1O/P99JCjq8BWxSd3g7xVvdxhcqoCkTyhRR6vQB35Tyg
	sljRbeQBfcTMk3fSW7bwv+8kg6bJy7BZrfe2RvFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657957612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bs5DiHMYONydrTd6XC8ahNTGCemrrGE/eBlhmr3vCUY=;
	b=UP+vV7FtkZJcy02MJ4nu88gVHv7dXnc+17RIyDhjcH4uh6rRD2m3O8+O8c3b+vSq
	pzQms601C/GOALGVshntFlOtEtVOL4znXhuyuEkKG/yGi4lB+zP877yCq3iVN++02Pp
	mDteINMV3huSQmd3Wq1QQR1F+vpoPNiijwQyYLVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205f97ae9-dcd7b1d9-c07e-401e-b4d0-cba80ceef5b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52bb736f1c76a22ce97f0f45cc16cd59220ac49114715f1bd47e3f776abe7bfa
Date: Sat, 16 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657957612
