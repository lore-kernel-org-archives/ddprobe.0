Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D775CBC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC6BC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670946687;
	bh=szUaj691Nf7AUwaRYvGkFSw5ECQLgxMN8PYvr2BiOX0=;
	h=To:Subject:From:Date:From;
	b=MlcgFjxLFx/8hY9w658Fu67+o3W/LTNMF6qxLeC0UZqjmal2q9b6Aj064AXYq1tdB
	 qcd2notD42Iw8KSLRjg/Lavupm2pofBsb9CCEY5DNFjCVPlWNyNgH9naqb68btpSIm
	 rJTBIbcleXsSj01vIWbpDUOsmq2TPBDop8rvCptONO8tVovAsS+K6fa+U6o9fto1K0
	 c+P0KxLGCQVNKSw8VHMkqlrdWlkG3tXbOjC7pO3rst0m6++ua+JlHsDnfuuPZFyLaG
	 LGw/VPyKG3VTeCToClFRbgYZvhzm+LVXvVb2mDBRru8A1yPf0QEh0edL4Emy7ASUyW
	 tll+FAv+AY+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFECC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094668738.32594.16935152504333400828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f04c8dc349708125493d3ca50b5c366dda1e93b2f36d913e7212ca14862c35
Date: Tue, 13 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670946687
