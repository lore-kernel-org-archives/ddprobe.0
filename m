Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9F93D9029
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784011114; cv=none; b=oywjCabwml7gnCFwuVZZkAvrig2JF36rNg9neAeOpIdhSK37uhShtf8amfxK3Svh9ZqFPGK+0HxYl0gtxcenn0J1cDRx8C0VMTWB+7AJiTpXSM3ln4Pe7N6MD71JTHxhcz1m3/yBmVOmhUrUlHtIc8PnHD+ZCmd9joi+g9zTIvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784011114; c=relaxed/simple;
	bh=12vik62CynlsV/j+yb5b8lLBGjEmpwtGgEuMSpZADUc=;
	h=To:Subject:From:Message-Id:Date; b=WYVMk/0IqQxQ9bpyGqYZ3h2Gn7WzjFs/XN8q2BUDxP+7VLRxoDBDc4u4smeqnkNWGmQ2aRJTBWHKch1G9D/p2ZOdQvomtv2WrXVDKLAz/ef21HnuR1SgIkB4pLIkBrndpB7zjeqzSBpqGfUlOmBZ3vp8dbTtSKs8Mm2+Kpki+oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY+hKAy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY+hKAy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB536C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784011113;
	bh=12vik62CynlsV/j+yb5b8lLBGjEmpwtGgEuMSpZADUc=;
	h=To:Subject:From:Date:From;
	b=jY+hKAy3+wYbvRsVO7ZvUhY48wXF2mYj3/pby+trOjgNpeRZ/hgmu225Ea2VVSgEH
	 unqK/0/YYJ6eKawKN5+gNw65yYpZrd7bbe17g86DaiDEM6sLW+vt1bOTk2qJ2TlkO6
	 UBVxfy4LXFFG24CLo0EKbxnJQzRBxkuwwGDNccDfDPQ9GiLgDknfKcyfaXWFBGsj8t
	 mMyag5ZNbSO6minK1LxS1JJBMljfhqpsr3yI7XZZuOZiLXhvGEuzYBuHNqIj8H0EMC
	 orHM40HnVCEgOM5qFSPANTed+rnKo3gM2WHbY8Xl2Lg0fmPRWzYJkwSi1Iyc9CH/S+
	 UA3DjaHlWSX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF7C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401111368.23796.11083898831972475788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d54589e678272849388723b9b426bdc3c95f38ab9852540ab8a3883b42b541
Date: Tue, 14 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784011113
