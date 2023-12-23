Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A43AD261
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au24CAh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 939B8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703326096;
	bh=mA9hK7iWt4YOiwD72QecAzSP8q/41+TtcAeL85mMJYA=;
	h=To:Subject:From:Date:From;
	b=au24CAh//5afB+ZWis/8nDN9eRhm95bJxUwy62ETrEU4Yvw6VcdJVzw2R656oPKIN
	 E9sCQ3P5w3B1kDsknlIcBloqGC4d/0g0/nuuXR3wfygymbGXUlYyOFu+BF6yWCn6Dh
	 ptk1UFJLzb4/BUj539FQrYJnjGakRNmGM+Ie87l55v6kj30rT5zCjXd4TbrbU1Cu4a
	 pQjK+R+Y8eqpLGj7ybC5veNV3MdbJ5RihvJm0Gm6/mf4rpxkre7W0PZvccELDFGK46
	 fDXjhsnHPBKjZPYziUc++utkY99lDKplJ5W33VhHVQYYcTAcwyg/Bbz3NhgjfLXidJ
	 51D9WKTFiVzeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F16C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170332609644.10146.16818777653848986711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ae942c259abca5085506cf05e32a56b8d60325956fba84dd95c3be0db47688
Date: Sat, 23 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703326096
