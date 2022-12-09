Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC179816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C322C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670567487;
	bh=qctjDRmlhzLuWqgWv3hkDE4D9UuYjqQV9mQE/4/78YU=;
	h=To:Subject:From:Date:From;
	b=nQaK30p4URG73e0or8OtKDsBcNOzhwAs5HtUAWYXIS6k6fgCTCZMtMGH6yElKTFgn
	 OFmy+MdY2Qt4uHQMHwEqJy3smL+JKPYkM2cn/oew7yESkpvb86J0Qvwn8uQjCLkjeB
	 fTcB/OsC04T5taJdKbQr+exVjTi+x8wwdOWN44n1I0b+TkazQUrnoMniS1vLlB4h2z
	 7e5M3jjLZUvdlIrdu5GO0iR3saDAKV/u8HjECfMaTBrUJKvmpeFPKJ1Y3ehXE99cgS
	 t7wst6DBXisgAlGEEL/aeDm/QQ7buEL2Ni0GXlRAf1ADE8tcTJq3JvDYRe3xRNjSz4
	 23kj+mExPmPug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60546C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056748738.10976.3545208394033920042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bf17472d485b65c4e1af5b429a5d040c61656947cee5b5c0c866e09103ba72
Date: Fri, 09 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670567487
