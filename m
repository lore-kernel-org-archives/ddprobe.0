Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A623A15C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646074284;
	h=To:Subject:From:Message-Id:Date;
	bh=iVR/ptQX2627tTVKJQfwMD8TG/cJHPrTYrXUtwgvyv4=;
	b=NjnqtOOPTaGl8Voc1UcOdSrMh2p/Td0fQf/bjPu59TEEZ+nDpyhg7GhO1En+jHT9
	GiGskPawK4AHoo2AQraK+PJh400Cj2QmBQOPV2QtvU7q9Gr24IowCuWRG7uRG642y7w
	t/dgfJlnRdbmJPLPQ7O+Rjw8SBgDoEOV1yyMV3sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646074284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iVR/ptQX2627tTVKJQfwMD8TG/cJHPrTYrXUtwgvyv4=;
	b=NrXjRY0Ekzd/MdRaoAOcIoqrOqoIjFDTxvUXwSR2gZZTXcbUtD0Xfim5OY3kQf/M
	rTNobkto8nRS1AAK3Mzh3wqG5jSHB9dHdQVld/4/SFIfTzvZrEi/j+PgKvXpT6xyBkk
	sRt9G+I15VLtM5O16LUR2ID0ENIdTPgA4ZEsU3fc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41ac4b1c-d30e44df-afcc-41f1-a4d0-82acd84c6a68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be06e9a34b604ee5566a90decff272f9f08a3e66c758fbd1e2d5d14424ba2adf
Date: Mon, 28 Feb 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646074284
