Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53007FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8902FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672893687;
	bh=FttDdCsYyXNczzYtU+/ZJR7+BzyLRoVjd8nwV2Tczrw=;
	h=To:Subject:From:Date:From;
	b=QipBidAlFpNFLhsqJvP+k7PHRaPLYtAOPcEhaXxvb4kNkJyBZPfr9U8UbfnSNN49O
	 wxDGDKifiD3uCNMG4rmIKAOn8nmX0iCq/v74pNUkWriKDiHRmt7Wzh9eXUqVRrKzWR
	 qyQNOCSLmw0jPC5F/B2PVb3p4wNdVTMtv3n5XZaA58b19l5nOtYA3/1yRnfl/hSC7t
	 x/NiVJT5NuuXfQUOO3PDlvJYJ1FOlxPmUkPOnPeDGUSbP4OYhL1yLkLt3Wv1a0/HoX
	 mxR+pE+nzEo7CwbKxKEWk7/2G9NU8ma3Bu0o4c8ONduTIzw05YZXCusHyJtnwMrb9U
	 S4ez4eVguzQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D151C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289368743.6173.6337165244935226874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26961ad2a17e541907f0c50d67d8d93b176fdde8a21888cc1b23a534e8e40a1
Date: Thu, 05 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672893687
