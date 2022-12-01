Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA680A20
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE0FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669920054;
	bh=b45pGi8bzm3BqhPk/ZQFfTuH2VIQ/UPBuWT4L/FxDJA=;
	h=To:Subject:From:Date:From;
	b=jw2+ZwqTtNi/Udfa2lZk5OWytXamrDJwllQ0+/2LENgDRrICc1IbSr53vbHezwutx
	 /Mg+oasEAC1y4KFHZmSA45eKDuVsCvxQ56KjrUJbvo5f7z9XdLZNRY1YUsenFELIMg
	 1tl9D/aqO9GhBxpoy6r/8rpknyhWmttePx2M5WlkrZ8xrpzJKBI5QHHw9cqNFh29rU
	 wZGtedtT7k3mHWsqLR9lBgNdJNC/LbAdoEWaLZDl1gZeBwaffK96CC7S9NXe/XM257
	 Vxls5H/Y3W1/z1iKgw9jwc5ha8hDxStZ3SasmSeVCiy+9/FMRUkPDJnSHmALibQsBx
	 H4tdoFL08Q9WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575D5C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166992005434.13518.13680512209744997022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00449923ff887a77fc40b210c8a91b82bf63757c5f9c06e7ce7f984e6f3eaa8
Date: Thu, 01 Dec 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669920054
