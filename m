Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE21E0DD8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776320854; cv=none; b=EaqwUrw9osJ+6SThuotl33PR0BawnZDJ8Zv5jN867ZTtaN6sy9iO9sukZoEnI/1DAVTjVDKPv60jOpfgqsfpvpWsxSLd01WKxmsSW7mEZpH7D9iIXYFOjP/RbGhGZNdK3PDy2t/3GW9N96TYvz3OKoHAgXZvAhuiajnBeHHfkjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776320854; c=relaxed/simple;
	bh=ecmSaTOhFzYgKBGjxsq6zH+ZyE3FalTfIU6Pa32JhpQ=;
	h=To:Subject:From:Message-Id:Date; b=g8RhRIEskiA+fZsupiOn1RLu4wOygYysmxFNy897CoZPGoMO6AHAi4gc4qGo+YDSaJNUNfPshCl0xm8YEQ6CmCcZNeuUHZcZ6+A0T/g0ljLev7PMxHPpd0AETbzXG6qUxiFyLV4m51Ow5hNK0uWcT3zzANKBLRS7mP2De9ZzEbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEJfzZUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEJfzZUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1243C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776320853;
	bh=ecmSaTOhFzYgKBGjxsq6zH+ZyE3FalTfIU6Pa32JhpQ=;
	h=To:Subject:From:Date:From;
	b=fEJfzZUsMfbly3/Bf9OrMhq8Mqos3DfPTm76tLd/OIcKdb37EnxHRfUENNV2BYJ0h
	 4rM6kUn/Zfen6F3ltpTfMx8uLtnKGtmNyFlAYI3RjEfzPyBpuJPx3i14L9mTJTkc2+
	 IhpHkWHAy+ivTIzZ+HzW8KsXTPvBzJzsCU/XPUpN3MXIbbWxKS8Tn4MV/pM2uKK+I0
	 tD7fRrCwRywcb1rSmygpZsFX40+S33XkiX+Fm9GUPcIipEEHLrDPSqBtZ0IAeImHKf
	 3SBp3Qysk5Z1h6KQs303AyomdB/CH2/gHW1I7XJUPB+SQbMvz8vWlMiEmODC8IhWWK
	 3R/v0UE5mE0yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE227F43841
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632085370.25611.18172020807919966713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184c8a03fea5316679a9ca2040e9cb43a56a7ccd3eba7d1b6045354cfc44c61b
Date: Thu, 16 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776320853
