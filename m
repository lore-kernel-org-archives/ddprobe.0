Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775DFEAFD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4861C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687649588;
	bh=FIMovXHLRTXX8l+7+xbxUCpqc7TDNqrSC/5VvzDV4Xo=;
	h=To:Subject:From:Date:From;
	b=RYtrkTMOuA1LrvFDbDOXls+m+SE+XADcjOM/NRnKMqnLc1lLwN7v+ph1BK+Vdq7+i
	 66P8OP6T7je0sIKzvdttq4plkExiWUvgBABg2oKgzPzTaA1u1UABFc/B8SqqDZXMtt
	 Qo+BB/IMipAlPbyuzz9XeEY8ZABpqOvvbJhsSSgh/V2yhr8rI5g/Klx3l+duYCRZW9
	 tmv/kSPXa7Fl3fXdty6RdgKv3z74P3y1Zgr0l7HJTBV9l42+SNm5Pdp/oAe+1cOcGI
	 mchW/TXIe6XtTGys2P2ezcq06/KE5zE1WTgJb7FRHVmZ2rGzXMbviM2HTLIwewV9tX
	 S4skazpPR+hRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59C2EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764958870.30705.15323915676414667949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03bf9e001c21a51c01510a24470a635df1654da1d000298509cb4f04a89a03c2
Date: Sat, 24 Jun 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687649588
