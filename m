Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D1A7F3
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 08:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DD4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 08:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676707505;
	bh=RUCMx4Oue/KC5Pl4vdouZ+Ajokjn9c+rgZ5Zjjg8dFc=;
	h=To:Subject:From:Date:From;
	b=gRLCmFxQvAzB5ME9fwEjkCDRzrGz7xZpKpTzLIjkugA5vVgNODcSyuXaSBfdqtOzt
	 jEFsCuHa3R38HSg374DrL3ockXk1BNFud0STYMiiCybnCYu1g1pJNvb/urHxq8nuhC
	 IBevdfk/YBq60ClhsALKlfIMG9R3w8TGXi29sBadxYjkbTvsl8sM3/uTsMYegDLOC1
	 xI64UwbcuofqHLIQ3+EPBIBfnayFLPgN0QhwTnknSgknJvgu0JFFpuZ6xvAlHO/dnJ
	 mwJiwrrjC0n0eGXEPMBsXaoaspTrrRgemVkz0oSWchN8V1OoxV8EMgJUtNlaRHRBOA
	 L3XFo0fq0ku0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0DDC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 08:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167670750580.1631.11226615535923156321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37351fa39c91fafc0cd7e09c31651048ff52462e5f3f0c42a999a16dc14b4224
Date: Sat, 18 Feb 2023 08:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676707505
