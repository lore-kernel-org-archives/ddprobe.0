Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4588B1A0B15
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742648395; cv=none; b=cZwHgXMmY/eT3yz6ZPv8zkvDVwg/NKYRHcTW5kitC61phjmrti1JcbB+xji4+1ChnAo/CVmsHAHMpmgiRHtTIagtMJQ5HcgCUKerPhptCzTSJ+v5tBwQFUHWKDrZoHUi75zoIW9agyb2WwKptCqNSj0+ZEooIBSnjlCb5oSVPl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742648395; c=relaxed/simple;
	bh=p4g8eGriAqUkpkRXfGQpwdl4/MnysOwN2+GJO06p8NM=;
	h=To:Subject:From:Message-Id:Date; b=FRSfwrwO6rxjQZbt/Q/D1Z5PPqlHLEKeWWHlaReOWgBTTbZyESDPCt3oAGIt8GQBP98MOgIAovcuUoDeLS9cQwtCrtjccT4lg5NKSnfEDlZ0OtBrZ0gAObo0SEX1RGmN/QvSEZik9xK8r9TlmqYVyX+a9TZKHJjLLcfsPe2H/ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF8E/2bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF8E/2bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD036C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742648393;
	bh=p4g8eGriAqUkpkRXfGQpwdl4/MnysOwN2+GJO06p8NM=;
	h=To:Subject:From:Date:From;
	b=oF8E/2bNaub/8l/o2L9cGSpExxBTiv23EW7Np4lKxlLIIz87zlmwEi6AQ+vaf/TLb
	 CHvMyqe4d6NeJQoph/CWH1AbzqqiuQQ061vLqXRgBxuFIIZZPBPMedA5wZmWFrwEXk
	 x6pN6XZmTKJZR1m7bdF3evWxfk/hBCwPHwzallk+rTbL9Asxr0vBeG6tUrfsePROfn
	 spiOmCFkrYNB4SeaA/omVcFmc1+3Deel5+EEJzsXfMEHnX9sl4FILiIVcYMSAY2RE7
	 O1IyWwrkbkjgS6pYmAi1KIyF6F3DmMSE6ciaAGYtbCPchgXlb7NgOAQeuW/FF+8c8R
	 G5SOaGr5DmQgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A512EC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264839363.3315.12370684188222367450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e88658c476e553da305e1a59147a43b0e905fdb99dfe7fba1f01108ee804566
Date: Sat, 22 Mar 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742648393
