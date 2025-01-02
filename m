Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206D77E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735780554; cv=none; b=eHwkfl6Tz0EHqCXPd/QAj47FiVPzvpDBYqfaDiVLCp7PuX3LT5burggf3hjfrue8NlIbrDskKGl+HFwBkCZZ15oXrBoiGScBID0D7QNd+bB4MAKZIl6UoJUg6gRsOfHcBNKXwnvttghgWmKUsRPQQm/HPGqn1287Cpbv5wZ/SH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735780554; c=relaxed/simple;
	bh=c7x7JWkImH5Z8hxyIxjHJxiansbBOMGZAFPAzmQ4Sn4=;
	h=To:Subject:From:Message-Id:Date; b=D+9GBE783KzjBs3drSvd2+mYgBxxdpBXnw7tHnKhjqT3ibI4vxpRDbMnAA83TkE/+RXsE3KQWDPzVoO4ejZZIxdLwaJfn7U6pBQZedOyXuN7eOqTAcadBXeNVFoUMPJxT0Bqb7DdUXBm/oUX5HFtd+ucECw75Z6WOt6UxgNGRss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHbRgKrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHbRgKrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AC3C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735780553;
	bh=c7x7JWkImH5Z8hxyIxjHJxiansbBOMGZAFPAzmQ4Sn4=;
	h=To:Subject:From:Date:From;
	b=dHbRgKrCp/E8pNdj1/IyaF/xc5cMJ+oiATG5xLv/8x4DCc3DZ12t9Wd6bQYApX//6
	 BH69kf7W+hPeXOBo6uCfJitvS/Jmxg3/0He7ns5Rh9mJ6mgCkLNMeM/GmG3t+15RiZ
	 cSzf50tJU0aZdplmjCIeldwVv6Hm9qLWj0ixF8X8Y5YJOfEx/dbQ1kuTQk2Q/uwlLM
	 PGzmCmanN1Ryv3ORn/RMxlGkk6zBkRSJOAryh2YCEqWr2o5WRV7HFt3XJZf/6G5fhO
	 4NxLEJGwtqk0wkCmgXx7CDhDaTJ/8Hz0O5KHTolPxKzQRg1n3yFzxtmY/GiyJjSEzl
	 0RrypfsjKYqww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F82E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578055357.8142.11163770940533379349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63672077df50c1d3ba3ccc695160734c318c00084ed6fabee9f9fbb693034267
Date: Thu, 02 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735780553
