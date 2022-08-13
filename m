Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442037E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660404052;
	h=To:Subject:From:Message-Id:Date;
	bh=d7cFP5eN+xyCL5GQaYtXhwoAg45TCMaGUqlTB/hbG3c=;
	b=B/ceNBH64JychBXUOE5fOXBori8ZN4NnAF+PbLCzPS/stV2OxhrcIdtIA1v7DRBl
	Vemf2KYmBiS/MXfj1noxZ65aJrfItw2MuKo4l6rPo2oLJTSvD5NkRLeT30Fh42o0znt
	AqP4iSduHl1XE5QXzPsYVgdf/eU0TE65Fk6Y+b90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660404052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d7cFP5eN+xyCL5GQaYtXhwoAg45TCMaGUqlTB/hbG3c=;
	b=VLgCTdxoFStaC4fnp/+YGIgHSx4pBKq3rtu0aJkUTEhEs/QIaLjnD8/cVx9vVmoY
	OfVO5MS+BFsdwDBorObMJhgsSTOnWOgtLCNS35x3HtAgYzqm3At1H63co7ZsnBGC0BP
	MsD20WisM3yq66/btOKix7Y0rvpoNVuVdUsW8trU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297cb3261-89108209-0d31-4140-bf0f-0fdf77999062-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 534e989d9f29dfce1d9ccecba83a41400d652a70090d739275f308b065d69834
Date: Sat, 13 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660404052
