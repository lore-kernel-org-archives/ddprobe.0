Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329A7175BF
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759451994; cv=none; b=Z+fhFe91ZUWcoOTSEKmM8HPyuZLQftNi4gbdVmlooJ6XPrn2KMGzgt83BR8uAgfHgln03Sl7u4dfonkWeA2Jggrs0kSUnV5fHnrMzjs9606wCqgXJEWRnVYLVlX2IoQjQ552Y1MczwN+QMmlcHGdps5E9Z+tBOgVLALvi/SIl/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759451994; c=relaxed/simple;
	bh=vFueE5FHtJeHqoN8dLvBondRpL2QpPR9/RZm5vPJlvY=;
	h=To:Subject:From:Message-Id:Date; b=RwaeRFCqhGRtgCjC5WvqjeMHpB1i0Tvdmcc3n1WqDfu/BtAqxCxSQrxb/HV+/ZpAe9Dt3GkXBaLQRmoMV2YNAgErtAkLJk6yX6vhRMmej29XkoKuFWkbQgnU6nt+6FuqMIizCXTMX/fmrpb4nF3cnxqOTpv2ObPuTZ+4ztl7/qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwbJ5SMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwbJ5SMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC273C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759451993;
	bh=vFueE5FHtJeHqoN8dLvBondRpL2QpPR9/RZm5vPJlvY=;
	h=To:Subject:From:Date:From;
	b=RwbJ5SMhihvF46FmP5BnsdLWYbjkO8p95N7enK6lcb7G5JoV/xuHjTN1DUJzbNqc9
	 NxnGGzh9+NnnCE7hUhbmfYGPdbKCbDfpGKl7/um9sMpo196Kwi07fT5mNykf5QW1hy
	 k9xi70gCcNR5SweS2Pg+48XMhs8y7sBZB5R5zBafhMtjhtmOcrnpRxUKoQGX43jk7+
	 /omK0HVkZxMx1R6wXtJLcrXhuMPXOlX0AyfaUGG+NDeiR9PHCMQ5Ktdi4krni5FL8k
	 cZ4/QtpkkS2DdHR7QVEQIL2ALVKpdOL+VVJrwUNrTdLilPU+yR28ZIPlmxb7JMnPIl
	 CagO6FWqU2Blg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB7CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945199360.3635.7972352239423571018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5661cc5f67c8f5ccf0a1354f4f9f7474ab84ad3db91677f7271c0a50bb3973a9
Date: Fri, 03 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759451993
