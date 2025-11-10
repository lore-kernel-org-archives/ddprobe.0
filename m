Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2127915ECCC
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762748394; cv=none; b=NDqtsw265wTVcpqXiAOmj2RYEmPPcxd3yJYPO6Kc3LeH7jYo3ZN1c84bgiPxg0IVEkI084lieLSsRryYZVQy4DGqpfeAXmkQhtbAKGzp1tMZVZXEokF0cL4eAghG7rMUORB/CIWLZdjhNbK1ZZZbThUDWnN1n0oiODn9/Cg/9qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762748394; c=relaxed/simple;
	bh=4E91w2DdXhyiduURhozH5ZmWQ4WVV23w5/+vU4Rzt6Y=;
	h=To:Subject:From:Message-Id:Date; b=d/OLP6Zt+LnfepN0qGeDQO+4KPmTAxkgtk7aQr0Br0r2q+zLF02HUls5nhpz31pzV2Y/1WPjCk0R1lv8KiVI6ZbabeRM04HzRFqwpuh+/210SitKu8aN2dU4eIvq2oQDIlGtVKmoMaPNhLRbnePM+FHQ19qjMHJzg3SicBWqYag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hgz4DYyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hgz4DYyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BDEC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762748393;
	bh=4E91w2DdXhyiduURhozH5ZmWQ4WVV23w5/+vU4Rzt6Y=;
	h=To:Subject:From:Date:From;
	b=Hgz4DYyfQt69JweG50BbUCHfpl19q4ZMc0qJmwdp8iKuumN6039xISwThBRjQDHUh
	 nzIrMMQ2xMtrqiLXm9DoAHkwq6Kw1AuWGOscSFfm+nnhYNJGlNHTllNkQ8r9tnD2nu
	 yIjiYL6awQZPYJocQw+f8OVxRrBKnfOYIIfgOebG3r5O+RVr9Qp8aXZaOgt3riQVFR
	 dDhwks0ED2zLcEuJzWRPNuxTJzWxkPltaKwO2SPR9oQyv4C/RS6r2qEMlwJrME/Jin
	 iFiEbW2JBGrdJ8f+baeZ+WdCtT/zzhx5CJBGDl2NU5ucpmS455bllmiZcld4H52/KR
	 p3/WOmrbT2OcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA25CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274839359.1184.14092725211374931840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccc513799db0280fb35b33c0a54407285fcc7ea4647e61dced399e9516502d4
Date: Mon, 10 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762748393
