Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6137F7C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 12:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655209199;
	h=To:Subject:From:Message-Id:Date;
	bh=MR7XbLoG+1QzLTPNOp1uPrc/0LQdANiDFsGJmxV1iQw=;
	b=bRKUS2EsX1itVB1fxsbqf3Jk1M7S2EZe/IRKpN01p/NHWIBfsgSvrLhjoFAQtsjc
	ouMoH2jg2izd0WeXKbWUEfQze5tNijA7iLbISIZVBknwT49R2B0rEC3VevU4SCQOF1F
	E4oHLgNECA+JvGwGMi1UIWYn3wKHHLNwWcfK6IWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655209199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MR7XbLoG+1QzLTPNOp1uPrc/0LQdANiDFsGJmxV1iQw=;
	b=k7t1NOM62cTpLFV7Qe5B4xZ/ubGN/gtrk5XmGRjPWxx1+TYFf+0ZljBub8FGp82J
	JaytXhsdI9orcDwLwNMqhtvHC/OP8xoVn6eNsc+pcaPDjhy9A4BW6v0CpvR/MUWypjI
	uucfdGiViIMDR9lKKXl3Eb9Vx9m1ZpkrUDDrhRDE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162280663-9fd713da-f04b-4d1f-bf4c-d7800cf159cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00bfe6d7bcb679246df66d15fb003243b9ca5623904a72cfd442561e71405087
Date: Tue, 14 Jun 2022 12:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655209198
