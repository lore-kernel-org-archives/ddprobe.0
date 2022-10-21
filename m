Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69137B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754FAC433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666320653;
	bh=IW3faFIanKlgbLugcvV5VIyt306hIPxgCViBRvww0fU=;
	h=To:Subject:From:Date:From;
	b=kJobsDOc54HLOm5tFJiFo0bKPl+vsoVv0R+fNLseOYL1GM4D4zVXxB+arG2E0Yuv8
	 Rzyz8K8kkHv093QDL87DWdWTD4rf56OgRUbUh7mgBPfwKbKodc4M4n/0+gECntEzRk
	 wTY+UAY9JZ0KBGZC/QtN1Rb6xr/VfzUANU6xVs3mYS0Gu1vdl/DoGE6f630rdmGtsq
	 r3XrZ50S2PhI92AgG9XLi5nO67wxI20XErI9aFyiThrXu3RBcGRkiVa9wZbhQSeTEv
	 slXgF4IgiGwi5udS6dfGerOUEypTXNtzu2R4Kt6obYczIaZ7Bz76eFuOOn/SJu9dlJ
	 FbeV14sVMKpCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55548C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166632065333.31565.6227280807722664751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca521c21b5fd3f739e731fb7eddae201f21a257f153ea8c4682604c6ea69c708
Date: Fri, 21 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666320653
