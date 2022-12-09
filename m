Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B1BA3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B498C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670580087;
	bh=MBR+9bR/aMGexP2hX8d8gpmkNOKHlu13GzNfU90JodE=;
	h=To:Subject:From:Date:From;
	b=oz82DaI4VRw2wHkbv8jkeiOgbLNhuuMdHCQd25O0IWa5APJnjk+/RqIQ5WSBnzRpq
	 07QMz45kZ5/Vh85r/wViRRriJIcFTDdfafTtgpUIX13DuHdz3UBZO+VB35voqY/nlY
	 RWvZoKqN19jwddqNx61NNVASDWgp7dcGu+/QsKSoosEh6X/U2lDi1lzY7Ef4KThGLU
	 NsK5aO2YPTubQ9adV78vK0DUCTUAgzbmdieAIp81auyBegjKMe2F6VINMV8KE60VZy
	 i1QQ/3W6043ga63/k1fI3H1PGXSaKYYfx4Ud/g9+E8mGNsPL43DtebWgrrXd4P5k8W
	 GatSx57p37cgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CAAFC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058008743.29001.17590200845995237667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a67a286d4ab75a01d15fcf9677d90a7c4abb2339ed312ed3cbddd4c76e7e476
Date: Fri, 09 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670580087
