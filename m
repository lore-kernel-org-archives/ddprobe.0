Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4787F340281
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780925074; cv=none; b=jlPOBf8DkrTCbRVa0WQMxQFIm7TTHsFN1LJVXSCRLyutUWp9uQGtI+JlW021E+A+XrX09YGFNEMSmniHgo4VEvvvTjmNCSCmgRIrm2X0suUSPRj89PU5Nf4tTODPRca+Fg3vpjkq4md+Z/jUn+UxvURSLDY5laq+ZzPmtyCp0iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780925074; c=relaxed/simple;
	bh=Wm+aXtgIkgy4YtTqSzl2Smyu6oa3BA+ICSs5j75CdJg=;
	h=To:Subject:From:Message-Id:Date; b=n33Tvu5iKgDIrFpeP9H8sRVsojmHBaF/ndIbZSUO/36Uw51CmD1YjCi+nzOMX3uZInXAcTLP3X7t6AQANl+u0t7CGHXDhvg2p6FMMGoSHayRYpvogFVGEfaElJQ12Pw0XVNtLfVNCuLkLpo6PEcvX1Cgwv60nYfxFSqefCVIINc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0JjbvQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0JjbvQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6333C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780925073;
	bh=Wm+aXtgIkgy4YtTqSzl2Smyu6oa3BA+ICSs5j75CdJg=;
	h=To:Subject:From:Date:From;
	b=G0JjbvQPoougB4MkUMAGEHWYGA073rW7UzXPtQ4BX9xEFNqMzZiJgTWyO1zjzmr3w
	 IWa8onvdJ9yURA3wd77tQfwDL7sIR4+v97wv55AbNZjiey6l/DgIkRCBqDspvK8s5o
	 3ynjPwDgjOqMZ+HO3yhCD4DAEL+PlvzO5RwTmw7qOKMAfCjH3PEGtxbqk1GBJA45bv
	 4hvt+v9HhdWgFhvCXfQJ/AP1d7BIUh7i3p4ba8SZUxa0BZkLLrhHL4ngLhWhX/f8Pc
	 gw5DZJJRLjeZ/ymnUdYjlf8VJaob02Pah1t1LVlbxEMfkOAzNuKAZB/m5lWFo3n5ns
	 fNBFkftYrCXLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA6CCD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092507369.27610.11898190502209423608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431c60b27b6290e03da75323cffe6f493b514be366ed995009b5fbe6ac480d05
Date: Mon, 08 Jun 2026 13:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780925073
