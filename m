Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C492C19F40F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746667193; cv=none; b=r5O/LD/LNwbkWon/EDRJtlMCB8uiZm+lWI8MzvPlJraYPP1S1CZ4JSwVyKsT9Ed1tJNgP1T8st53e0W9K3l2YUe0OV13jwx/uYfDuiE4FxGFhJ8NJV83xNfEFSNv+mr5la2qISLP93dyzt6ixrvI+TNEoA5ohl3RX/phg18gKLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746667193; c=relaxed/simple;
	bh=GkRwwqnoGNbYS0Pb3aWdsVIjFSsRWbSsthGHybeJIn4=;
	h=To:Subject:From:Message-Id:Date; b=VmCXw7b3rzK9vXYyh2j1zS+ugFE3VxSQTepOK0t2YzQOIQ8xpeTCx5waduLvdmMPu2B5P/VSHRgAaoV+j8FyrGyBLVpztpGrIHQOLOWCH7E0Zcw+PD25pEkArY9oa3mex2tt3sTffAJPli8mGiB2RD31AdEakFDi85d3yuWNkdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWicvntt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWicvntt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27CEC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746667193;
	bh=GkRwwqnoGNbYS0Pb3aWdsVIjFSsRWbSsthGHybeJIn4=;
	h=To:Subject:From:Date:From;
	b=BWicvnttRJS+GVLFBuHWKPOWEAe4PSQC/nayHQfq6qpMQmGq2Z0+nFAkREfhpm5fx
	 zC+2kAk+3X2XkVPJRIwVvbtFALgb6aEFT6saAN7qlUdpPjurzsfmsY+DoR05Pnfyhc
	 jO32D9s8UPnKiSspGGLv2JhziSkQEUZ3PPC3IQ3qkT09jZEKNdwDJCBxtSP56ylsyt
	 Fw2zBwpchVKpTppL0WmPgkC33jfQUeXkAzPwQxUMwBjQjn7FnWqTjgLW9DxN1gQZWv
	 NQs6MFw0lOu8ThiL99+tv1yOIuZ7lUpFuBh41yjdL/ur0WwZxDPusRzWGArpqNVuL0
	 D7b3w2GaShXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE6C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666719357.10462.10721511278788716227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17211f15d59fa539b514647a8e68368ca22948b537ed5b7a72a13baa08bc15ba
Date: Thu, 08 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746667193
