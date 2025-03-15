Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB8B366
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741997334; cv=none; b=f+hp1HtDh3nZ7bqZ5dkyVSEIm27PGnO/qqYrQQdpixNHF+xZB3u2H8pEYz+DfHTopkuxSIWtPBKX1AZQB9lwdCTYpqOAsgFq1LEqscbs+FvZsHNk9L2z5p1FZoSf2+w75RaIUkAqnSCsQ9YKwMMJ0QMB73CRY4OsRLfc/540orI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741997334; c=relaxed/simple;
	bh=NAmxNxDSa3GK5XYpv9gnsNspNc6x+v+5/WlEu1cU08Y=;
	h=To:Subject:From:Message-Id:Date; b=mS0+qdGh8qcHVZaXJcA5FE9RD1jL6ExKrjFz4x7sYWldyhMcA5OA4eFyFtt5hMvh4fq79ffS4cp50zWEQwXZwZkjwXnMcKzwrmDpCk8EMNsglO0HHPTMRnxJHB6DoTdplCifBgt0+j615fkOkRzpRBLd92VfcoJi3LCWh/7R38E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4K9qmUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4K9qmUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCE7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741997333;
	bh=NAmxNxDSa3GK5XYpv9gnsNspNc6x+v+5/WlEu1cU08Y=;
	h=To:Subject:From:Date:From;
	b=b4K9qmUqqgG8urPdXIKbJeV1l3dozNKms1sHXzCbm3X1ZR4Msj2Z3UM5iWyF7RYVE
	 qkBqarOlceJM+jnZUraXyl22YebRV5AQEPFPVu5GafLIRDn9oOd/9BLMLG0+gwiyPg
	 7LPPAyn3VLXQZysBOOeTEewMhBW+X57jv2AXTCMmYjRa49TqzoQukFG+HMh+7CWf4X
	 zpc0fomA0X5YkPe4LDYs5ItNsvpIFSHFbsYHhfxXm1U4h7AaV21xhO4M5VfAgdOiIY
	 ny8XFp+V04p7S775dd0OFcOVqNQFRogzN4+3tQv1P29C5S/gjLmtf6t7zPLDYAPJaL
	 PAJa7MCu6IIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C5BC282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199733360.25165.10878114411736298506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ef0be6ace14451a13714a7cfeed093c1169421789f9249882334ba0ed446b1
Date: Sat, 15 Mar 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741997333
