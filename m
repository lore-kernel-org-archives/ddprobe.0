Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2A619343E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779544354; cv=none; b=VJy6vmfeT4jruH/Z66KxSOAkc7qpig4FGVKNVm8sJP1+tE937RWAAljb9MQ0B0BFq8M+0SCzN04A97ks+YDo6sGN7T+GC+zuuV7S/KfbDsHs9ZNu1sO/1BPXbRSOo2Uc7mFW75h1RWkX7twf1SXP1VJlrwcMc7C0jniPdELERSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779544354; c=relaxed/simple;
	bh=+pWy6czMOzHNn9pHcFi/Xhj42XhxfGlr4IzQ75wkOLo=;
	h=To:Subject:From:Message-Id:Date; b=utG+MqcAxBn+qAePjV28NuTj8UD33Urs8Zr6eVH3tKlPmhh+R7zwjHY63AZ92sMXRqFLZkbTEIgHrBV2iQJHzntSsrpvHJZmgDJi6+iJW3odLBeTy3BB5fdbGs/GJymMXnnk1AR65fRAGOYyO4UGIo0WMyw0oF3PoUvibK0gKzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEULkF4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEULkF4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3792C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779544353;
	bh=+pWy6czMOzHNn9pHcFi/Xhj42XhxfGlr4IzQ75wkOLo=;
	h=To:Subject:From:Date:From;
	b=nEULkF4rVWnJ4CuCCpbeutwnXhgN7OMR4Lo5COXnupCDklWjkNiYhn56qQzAyslST
	 /Mi7SMNLbccEFz8SH24YxyanuIaXcJub+Hk3K+ZK8udpw1GTxSM0rGT80ccnIPJwMV
	 h4YAU+Scg0bEVvHYAlZjhhl+XQYLv7vjpDd8ohL/IpYcwpW1ZehijsADILVdje06gD
	 Kvx8wNaVJAxzStlDhKVidCWCFeef7FX5ie8Vl834iNiVatDukEO3JCJrWjG/z0agIC
	 O14ljh/mVU7KAkDjbRGDqkPbB/ve/pU2RkyMamWL26suWX8bHzYu+lx+qXCFSaOc1+
	 uuiAYHBEn7IRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4BACD5BBF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954435368.29861.3688613887740824215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73207a8819f5518ae60a533313f8318aed3fb212fa135e425fc0a414dfbc578
Date: Sat, 23 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779544353
