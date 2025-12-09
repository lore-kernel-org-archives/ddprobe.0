Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2527F2F83AC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765310574; cv=none; b=q+Cy0Z11nOn2b1hfF5UT6fE7oTkQ/+u20RWMNrGNVWXMnTj2u8rDmwvq8kXa9JzjZjfJAqC6EwnBQ/u61LRYM93N8RUjQn4Fj9psQXbPTW57/C84JEcn04MW0r2pFPQx38NSf5lJfzRiw2jfSvXZ9+W/hXjU404UNuw2hh1g/9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765310574; c=relaxed/simple;
	bh=+Y3dAAhTod0l/6qazTK4n0w5OYa66l6uf/DrpQgoLys=;
	h=To:Subject:From:Message-Id:Date; b=hc3r8UbkEFH3cwVQIq6sVKyU1WvHd1vNurh5qL4OGc0kQ4yX2lhj+8UeTN/Fw39JQNkRxu0IyjaNNA+irGmxTjoAqYyUQ3nRyoDkWHTxqSBtOIAMfSzDcgXWQk0DxVumb9g6GmQPVni+/3quG5iLIDi6llzoJNyFFXwMOm+hg5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQO1dU5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQO1dU5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4865C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765310573;
	bh=+Y3dAAhTod0l/6qazTK4n0w5OYa66l6uf/DrpQgoLys=;
	h=To:Subject:From:Date:From;
	b=GQO1dU5GmAg/9fZhSWDbwL1ka66SfAmVLE+UDqg3uHUSYunz/R7HR14UHK+TEYD2w
	 DXCz6pQ2Gc5j4lg+A7vlSogvZDhKvknluoASX2dVoBu96yFFUSns6J2P6obUSelm1E
	 IlqleSnAVCDqzbK0CGb+SgOiHDA37FgkuMIJ+nEGr2p+TuEr7HrfBiw6p5pWeBHbN6
	 e6JU7WGvK33soO11qhE0ERYiHRonCHT97QFkZcX3QFlK/zhgtd8GQq2MJaYk1OE2J0
	 c/xG6Ym9cfm/OtOt3cTm5TbwKhZyeNd9Rc0DQUnxRx10DlUJYQsC2BzW4tcrEEL9dA
	 Jl3fTqi24RkKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1424D3B7F3
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176531057360.31692.14832033475566707210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65ca098e2382d6dca6925f60935829c677875e94333a65e798a9c81964a9369
Date: Tue, 09 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765310573
