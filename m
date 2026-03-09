Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADFD3859CC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773062093; cv=none; b=NkMfZXRPH3iGpSzi1+wHEb4wCcv3n2Nu0zdheXbPNzRMwvEu9ne8wd6f4OF86jSoumNiML3WOy+AYv+eoSkqgwDDtKNRm99Wa6gNrAtLxgc1Xyg2DK/IjTNSPYoGRbkkc4bjM9XlPU5Ka18WXrvjLWwIyu3/yGGwnNsWT5OU2t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773062093; c=relaxed/simple;
	bh=aQ+UBVVujL5UC55EuBRaq59kduMVfwG+glPxf9RZrH0=;
	h=To:Subject:From:Message-Id:Date; b=SU4FLgG9VrpPYuu/H9u3O4avJdVsSFediexn32VQTAgclwcF6RXMjTY/p/VSscBrSLV8P0LIduawc4H4nzrDDWIQe1/ooSEVDsKol+qM+VoxiV8Zu6NfyE+AJ3uC/ET+ADKGiXQp/foN2LwPJMaWVfx+P0zpGse2TtYDYRbyl/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lELbfhGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lELbfhGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DBC2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773062093;
	bh=aQ+UBVVujL5UC55EuBRaq59kduMVfwG+glPxf9RZrH0=;
	h=To:Subject:From:Date:From;
	b=lELbfhGbLMkZqKd1jaTWr1QiHiA+3EFo/1YNezuac2sII5qtBx+0HcsEAKACjcAa1
	 e5iegMiAc8x3GfUh54nugUXCFIJbdqT3KPrnL2wX18yE8UyQHCkBPfdFuxGkDsqfsP
	 45nFXvPvmQhTXr1eh2wNRTxg16+gz3GFleUKLC06QR1XAcpFoepQGfXDosJSLyPZ+6
	 GpNBoSId26BpJ2fDstQ7Wdy3eph1RGNfa5cbQaBO5KWjfjO80e9mlSgsM6IIN0Bthp
	 yz5s5vM/VW/vJnsx5C9OgeKbLBcK2f3nU2yBCAUJxPsrjB4UU2hvr2tUqmsN3VwRKz
	 kYB2H3UwEcEcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F6F3C24A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306209357.28506.8618951195475400878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439aae30d4e68723f319877d84db6f5aa74bc8759fe48144accb2ed2cd500984
Date: Mon, 09 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773062093
