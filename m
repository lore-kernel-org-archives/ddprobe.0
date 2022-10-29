Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51B815B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A18C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667025054;
	bh=QIFfwRnik93AgQZwcV60PoLqvrGY2KZ+cry6OjNVCLc=;
	h=To:Subject:From:Date:From;
	b=doyET/9nvBfI1Atjej+BRSwFSXgUL4uonO5QHg2V/hqUI42vhyTNefL14UCfRvAoh
	 6HpAu3q+ibHqse+9EqV8kXpeDB+9K/3kJ8uTa/7SVDnIkcbXaSGt7k/nQ+LPT8vxx8
	 Sgv/pNGolOhnH6ZqSea6MVAXOU294drbQ6YU4a1/G26GWXwNVSOWlI70LlVhsegZQe
	 NL3HFAruAhXMxH79gi/QslvptBLf/OtJnoPvgL2YshcTbIGgpRu0OdTEQmQZtrYDV1
	 RFSCiCapgINiJ1UTsqYHA5jB96biLOl2rFKklUTbOTeg42cQNqFIorDepPBQSrSV8+
	 2IsoBzaFdJZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C39C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702505432.17647.11647563639535979541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074e67a839f8c41e9d231a4d9e33c6e3d6a995ad2c10bcc805f0e07f069a62d4
Date: Sat, 29 Oct 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667025054
