Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171C521ABC9
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762284594; cv=none; b=Wn3k7NpzPvGq4kk+RRduFxxPq4dCPBC+3FFrC55ChGehAzIFkgdSV2VCkNvkemvZUi5FD+lU68rwVsGSFWiUjOeSR+DDSgjCsPtdvUwbvrqOHme36ohYtJI0orkPIsiH2YM5itD6JlYAeEtTkd3BM7QAvSTPtbTzpcOotmXaK80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762284594; c=relaxed/simple;
	bh=tYmli0F9zYOu2+h4c7gFWL8RSPThTL8t069W9gtN4Hs=;
	h=To:Subject:From:Message-Id:Date; b=oJQTn2maAzTWhcvDveWDKM/CDT21SoJVLX2MGdisefyE0eaAQzuO9lQGPbndHaMTqsMHUVnGg0K4imkZ26HJbuc4DsXXfDNMol32jMvgFtUs/+b4Sve96+GP03S3CBriJY6kLggWr/hQziHq2w9wyxUBQr9HjwJhHiOhhlm0GV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/Ezw9Sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/Ezw9Sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A433FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762284593;
	bh=tYmli0F9zYOu2+h4c7gFWL8RSPThTL8t069W9gtN4Hs=;
	h=To:Subject:From:Date:From;
	b=D/Ezw9SfueHypyem9NW+M5jdBOl3lhG5vOOMFEOPRnC2Y2sxZsP/rp+Xrz5oK7Twn
	 gyV7HaRy/aOR6hdOPYwh3vN/j/s7fKiDW3mpuicKsQ8o2P3nz7s50lrqY6Y6pR+L0E
	 XsckQv7FB9fcLPN4rFR8p3ceu5f57oXAUAbl7Xbv0khLV403FQiRYoekiwe2DEtJwH
	 4os8/9wWoXJCL0DDkHQx60U390YtUV6A7XA2mtqegZgzjN1hxrXqBbTOVweAYLuct5
	 hJbtwt4Rnr0TW7PRLmkZcnuadw9QhrGGu3Ge1UWs7ULwfECJmlgK8cHmAFLt4FRVqA
	 oeSbG/HhHuuXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578FCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228459360.511.17102724881824196784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da6a466039eb96e881c959cdfa6a9cce8a61ec582126e0bb085d47f0df3ba65
Date: Tue, 04 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762284593
