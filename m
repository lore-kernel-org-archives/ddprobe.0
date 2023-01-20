Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435DD20EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E18C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674214925;
	bh=+dViUA1kVlMeXukO0T8pXYKNE8z+A2h+TT/FlbraajA=;
	h=To:Subject:From:Date:From;
	b=ej1XWB83uMT8yEUF/ygsFSQ2p2pmsVJ6jUf+PUNff6F8cQzaB8ZXip3fhSl9NMXw7
	 +98XPQwH0b8DXFkT/Rj/DP5pY3oVuq38oUaFJaxGTD5K8d2vJek/dJeIsh1PBcwa7K
	 W4MoCIkU0pQF2ImfDdYrnRSmCLDMoR2PiVwNqH9AHwlacFvAREm5IDMODMFjLW6v9v
	 EoB3xDL1K28aK9w/PZa/3mqL6mzlIgFyzkQoMrWNZ15xPbQtUcpFAslHI/KJ9l6awD
	 yjgJYeh3HiDSd52UjCmdC2R6DKFDH1ylx/V5F8fFq3O98u6dfz5TIc943cRxv9f/vy
	 7gWL1YlUk8qow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38E9C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 11:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421492579.11547.10418084127185774126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad6dd7a2831d1da66cab046a2c5decd31d3c68a7e7131de8aab9fe1c3479c24
Date: Fri, 20 Jan 2023 11:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674214925
