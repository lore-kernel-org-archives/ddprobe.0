Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4A4DDD4
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718603303; cv=none; b=ZJM5wx8JSDP/8cKxPz1wAHMKgcgT0Zemtfq55sE/O8Aw5sk63KW9AQUAM8TE9W4GwtKA30VZl4+jnOQof1r9GPVRfUTjgp9SZKbbvsQllMA7vETKOwFEjph2ggbKTbSlfW+VthioO8QphjiEpy35oG/59oHSoBw7Vt6liFKTqJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718603303; c=relaxed/simple;
	bh=j6M8XxH1M3Pwp9TZ+KShF/c/q9kSHpO2OZh7Huk1UP8=;
	h=To:Subject:From:Message-Id:Date; b=fp77OvXCT6zdPYuWTtcSuQI6ZDDNR7aOy4IJ+2sN+Ty6yMhBuGGzmjpBQkSawoxusksdzr6xHM8y0dnF3LXkZpGyt5ryMninj1GHL08GKYBxceAldu2SyCtzsav2cH5BPrr2Qlnm7+VpIWbej486leEzjofnpEnOn/a+DpnZaUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPNAXMMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPNAXMMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C0CC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718603302;
	bh=j6M8XxH1M3Pwp9TZ+KShF/c/q9kSHpO2OZh7Huk1UP8=;
	h=To:Subject:From:Date:From;
	b=vPNAXMMIJ0GFWACBEz0YRcr+DI+/jUpxFIFQ4TF0QaHbD84KF1c/Hdk/n1q4VAx6j
	 xL2tIz5gvGaiqbBNL49G9bM5YP0RQhlYeTouJSHfPCTwFPj5JjLgXAcBUxttSyhR79
	 s5xUyyH64v5VNi4oAS6Hqf/u/0jgyMn4C7DT/SIQECW0LVnBwL6vzunvrLhzIz9l0f
	 9UTlm5GwCRY/M9+q2VJGzwdCO4MopQ8/zmQH81gm5oGN6l9PCME+wzhrOFkb3KkDhD
	 /kmnI9JzFLjr+PzIHiCBy2b2xig/6nQOL1fsruI3VN7DfEVaeQh/cREmPAqOsaOZia
	 wt5MELyNXqZTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF675C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 05:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860330277.5188.10572424782694900345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b8118fdbeaf81f059d856cf6997250695b2b25419f2252e081f6583eac561f
Date: Mon, 17 Jun 2024 05:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718603302
