Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2558A3EBF1A
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771673694; cv=none; b=qewDt0RbrRn/XcnikJHVwW+07O0upjmnqE/vB8HCdpxgotd0XqeX3gdFgZUm/1yXsJo7BnnIzU0YuDBl/QFSV1PfuIBmDjOoiDGzHtnF+0VmhgGZY3NQp3/zo0XqN8pQ5GuFyrnvY8K3Wsi/yjlUsb4bFQKqv4yKqdUG0Q6Q3Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771673694; c=relaxed/simple;
	bh=/DUMxl9f/vU8+EmzKauh83Rgzs39L27qyVz6EuFmE6A=;
	h=To:Subject:From:Message-Id:Date; b=PhHOHrqEddXI54+Yo4jy2TXz2kaqxBToWngU3FI1Y7cnX2WMVf1B8LE8itU1oXldeZXmrd4mXNLyFMQ+bvkIvAM0g//t69vgZaRuBYDZy4N1JLtyTz3kahfJib8ei0Yd3qy1KAwuRTkGL/YkPZ0de9G+aOSQnRsDMH2mcsiFfRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiuxkFkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiuxkFkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB420C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771673693;
	bh=/DUMxl9f/vU8+EmzKauh83Rgzs39L27qyVz6EuFmE6A=;
	h=To:Subject:From:Date:From;
	b=PiuxkFkYSOC+H53UBCLT8X8KmHkuiLzVtqXuMu/ZrpmdZKFxUCZnlnizOolyhIQpn
	 Yeyi9ns66uMfgcyPyLAr/M+S6yeSkAEK7V/xSCBbpsYolWv4A5tkg308FCpJXTfKPZ
	 UgsbdSXFbWub6eN20Z56rYmG/QoZRGFIOQZS1FlpgZ9+xDEvZXaPpvoDRuv7WvegEU
	 q7iQ9UPzKx137aIg6DvRCQAQqqRQUF3iUqWcHa5LISAwv2kVAlUzBf/KBf2gJG78TC
	 MzpLmV8ybORsnzZc+K513PrJBzbZEVV2/NKPncoc7GQXxFUA/VFqBlSHnr4Disu9PQ
	 lnlGmVr2663nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724EC61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167369358.25588.3880077556056156950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7221de2e9c54a314aef85f29d09107a26d48080f8fbb2ae053fd148d130a6c0d
Date: Sat, 21 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771673693
