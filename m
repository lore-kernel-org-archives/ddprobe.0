Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFDF4C72
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4E5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666199453;
	bh=Q6o5bitaCvicZNZmfgER9XW3ySkAbICwGWuTvi5PPGg=;
	h=To:Subject:From:Date:From;
	b=m+GG27FE0qQdrELsPb1FWIUCpdp7QM/dGt0gBOR6hJhj13359q3O5e94O8wkvhKOh
	 nW/cxcy69DPC2h+OM1Ih/n7cCRmNBNDtJVezxoJHEPMPz90VC39s/6xxyaADquEsI7
	 UM9n50ixaW1uHmAEzvjJqlxfC1BiwE8hWKLNHk/PyuJ3yraobyt5SFu9bVEj3A0tou
	 p44vOzGYdP6mBA0SF7qGs7vWzwSWl8oP0h8EPrGvARJ2mSDgAhHpL2+Ll3jvWqDGnK
	 fckWPnk6l4Hj65npUxBh/GNmyVww8Pg5vT553iifeSNFtnnY9wC2S8ycpP2ukp51Aw
	 gu7Gp09RrZOpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D26C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619945333.5084.16211216130821019127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9987a6b3c0d07f488148dbeee97a8d132daa864f8b5e03f060734a788ddfe1
Date: Wed, 19 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666199453
