Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB1F4692
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657568212;
	h=To:Subject:From:Message-Id:Date;
	bh=hunrW2/r0c1UAem0MHarLou7jL1gAknns/hyv1GDdKA=;
	b=C7XWyyVEw7DDGT/IR8+RNyega86MgOC/OhMfRGPe701yCFMeQjXG9Fyi/RI/ylIb
	rYDT01IQ2FcOxPF13dxifuMQuuoCrBSgoAP2cNJYq6IRrKBx4zUE+mc+oZKpTC8sYDY
	8yGqoKhhk7/Qw9+733BEQrpQ6qw8sOcn91DlHtrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657568212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hunrW2/r0c1UAem0MHarLou7jL1gAknns/hyv1GDdKA=;
	b=H7QcaQq5cj5z3M7sb8lRC9JaTzfBDWrdOU390NkNgn4yVev1CwCsSAORe8hV3Vf9
	ZEQzX6Zp36wCTNiDOYyqcr7BJVPWyPKwvdgYcoNbNsvyQyfH+Rf6Bza9AtQNJJZa0DQ
	v2CRI/AL+gwVJ0e5lBYNTfSz/pJrTrUcSAg0m8jk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eec3b57b-a606363e-2963-4bc7-abfc-26e376010749-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f56560a7b0c877b42b2c5642d9f855abfe89f8c05bf3bcc1a5b5429841a3cb7
Date: Mon, 11 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657568212
