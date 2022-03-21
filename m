Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C1C36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647833784;
	h=To:Subject:From:Message-Id:Date;
	bh=7v5FxFygt3r2B0cRNQqrNJapQFNiiGAoHFphLv7PmCs=;
	b=dYrYaEis8BzhEEOSp1Imw95IfDqsSIrfF2Zee5hJUH1OTj0uL6oi4BJVn61Mw7sw
	MUD9suvMZLYeleA9C7RLyMknPrdun/pf10n2ajT3OsWSgvgbX59gaob3YjvPdeIb5Uy
	NNmRaHfeWF5QAyoGIpdvXjLhAiVTUTGSwuPHul6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647833784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7v5FxFygt3r2B0cRNQqrNJapQFNiiGAoHFphLv7PmCs=;
	b=TCctrpekKzm1xIn2GpwfSwQwrsfB2KrNeQSBvCBs0Ogik/cITLrSDyJIfHIUb+Mx
	9Uks33sjDn6zFC/6puQ6AwCQFvma+DLP0LM4BPSriMfe5emSqMbWu2iWCyQix1f4h2H
	0NodNsMAszQwA+UTzPCC60gpatNqQPzxFNeEox40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa8c2180-a5c620c5-ad73-417f-bddd-a8bcf67ddec6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 560b69ddfef40faa87823c4f452763098c7d7120514fcc886a25ff2422052a45
Date: Mon, 21 Mar 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647833784
