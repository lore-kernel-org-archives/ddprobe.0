Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCFE0633
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7612AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661891453;
	bh=REJ96kpBCO6qopnt8oneSdf7PrT6TR4gmObwiEYDlJ8=;
	h=To:Subject:From:Date:From;
	b=KTNKcplInFqDfHBq7pZpzJwXnKdV13sUQErS1NaM5QZmkziKt9O1e9aVcP8WEstEh
	 Fe4YrPe5p1hPDT5Bq8CLIEpIPmEtZObBLmwRdo0eCtSMhzRAXxfkcmAEyaWrOUpdHB
	 SYqZWxhx2CQHTXAVaQc1xapPcb3HXM47h6FB11/NMTSnoDw+8Ec/+ZBUhU+qQZRuxA
	 rUuRUiQQM5yPkMYzRK4cuLC6pslrSzSfM+Jbts7bv+52Vq5cVLvuOhE58mgdN/MO5w
	 MVIw5DLD0hvgfaL7pQ3MtO4oeU2iEVrJCNZRQ16VCBNxlEp3qe/88/bYisCOCM7fBl
	 X+W5q4EAw0rqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598C2ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189145334.6478.5366088998135163647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18b4dee6928040af2f182e35c35e060521c6e215ae60915c24128500f8975ab
Date: Tue, 30 Aug 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661891453
