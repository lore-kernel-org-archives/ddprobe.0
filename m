Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1755192
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA07C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670208054;
	bh=FVg6KAcABbEazrAN+P2K4f047QunyNNCXHZIJK0zgyo=;
	h=To:Subject:From:Date:From;
	b=UDN0hCH7PHNhy3Crz60bQopxIf5LaSyZV8+OTzm28M0AqxurdXhop4HY+PRV8r/Pl
	 lA1RQB5qFlwWyugHlJR5ZzSpTXdi4om9xHZtxgpy+kSKusDxrtv1nHSAosZBoUK9zu
	 NsnAOEmSBITmFRwbDtHfWQytNG5UvVPZDMU0xHtHTj3DzGgrPfsJgEEoKRjvrEFvIH
	 /ry2i76OWip0/vgjov936efwN40pxW/gsvQw/YqOUYMEB/VtlBT/ieUcM/vTd+kNPE
	 Fjwi2lRG1jkK8ug0mTOoDW6FCQMKeR44cwrKGbuSiRL3cRioU84S+wAWhFkfNANFg8
	 5PrR9eShbVxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5446CC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020805433.5026.44468237894199654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a9d829655ed12f49839e1894367ddf51e1bcb136fd5c26416d5f3de3bc726b
Date: Mon, 05 Dec 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670208054
