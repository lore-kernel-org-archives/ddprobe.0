Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D07511191
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB865C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684511885;
	bh=llsv5QFR7rKalaIH3LBft8p3hPNAgNxCt/YMT4mQilk=;
	h=To:Subject:From:Date:From;
	b=NUxg81dfPIiAZjMZtwL1qcIHe9THhtsFMgXfPWWCCs8+ZvORJTYRYBshppl1FjYvG
	 Wmb3hcTsCdlg4s82AAGnK/dKhjTSOfxDnSiAXAh42Oc9kagWIC4UJnib6z7iagClUH
	 K6oIEdpg2qJy0sxR6Y/snmHI0y9KS3eqOfg7bPvzIYtpBzmVDLtpOZuFd3yTgnqR8N
	 68+tUFVWnW0qD63nefVhrHi4ECgIrp8fBJjrzn/OR0yKS2XzzkaevfPBuYQ3Wsk5UP
	 6/iZBXV6Yr4aVnkbGcC5WR447T+844EI8GHERuJRfjsD1VYhw2/7s3yjtpBIXQmYii
	 XZSPUMQedvqvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DDBC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168451188577.12092.14651167032718657654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38662e4c230003358a8d03067885262f112965b5f841464204ba091fd4a91928
Date: Fri, 19 May 2023 15:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684511885
