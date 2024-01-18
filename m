Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E173174D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705616896; cv=none; b=AzPW1ciGB1MbA9mBMUwG7XWyOH2MZuLjHOw4dKEliEgQe/ncir1m9jVyNHpb/LtivgE90VFZwLXxz38i4iemhYD/H7E3e5PqG48Kg1GxuRNj/gxKsHANMJFLh4yxyg1HwI/892NDY6fQzrZ8CK9zCnRPaHMuVaeYfOaCoD6uUow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705616896; c=relaxed/simple;
	bh=t0jVjN1+dftNoGCWjDWma6j3CpOLCmOQRz/timUGq5s=;
	h=To:Subject:From:Message-Id:Date; b=Qu/EhcPxUiEolZbtgHvqOXStz2K/7Q87lpBS54T+vh0j4cF/AW9qZ/C0UQwWJG7IHAbIpyXBO31rtz3FDMFgK3BtmA4Qf8u5h9yT+u36s5E4CuNuZp8jecrSZ6QRWKZWQkIovTia9h08F/6VVwVRUrQDcqjm98xNZKTBn1P0InQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUb/qAoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUb/qAoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77387C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705616896;
	bh=t0jVjN1+dftNoGCWjDWma6j3CpOLCmOQRz/timUGq5s=;
	h=To:Subject:From:Date:From;
	b=gUb/qAoIpgeMWk/NX0w6wKuJNdNZc+/GX6iHVGOMvsnpxI1Nnt3vxzdg+5SRpgWcF
	 5Ep70HtzBzrFbqohuR9agEXHUdhWpZZGYbzYHMkXWXkYnYpXdXYV62fYxV2wiO7ZxL
	 cTfr/cvnvfQsCXUDSkKmEaxCoKdOdi97DSbeteQvRRYDR7CMkaMNHnySNZRym3RcAn
	 Dwtf2RdQt43toMf4DG+3EVRBjB/BUrf8UQ1xLIab5Mdr4avnI3aVM2rbLt9UjarsMZ
	 EW3hNsSTGXE7GMc5D3HCP15+08Nxo9KX2iO+Wu68JZFVuhq9JDVFfVcLm7ldrDLOUS
	 wgKqN8ZW2OWDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F18DC47422
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170561689638.2943.14698674600188810464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b13c6b9ed13bf09661c477186fa9a7653c4507107aa40a7cbd4d307cdeacc2
Date: Thu, 18 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705616896
