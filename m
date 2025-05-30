Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3560228E7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748584194; cv=none; b=BpC88wUgSly6OBIZc0d5D/daaMN8d0iVdegm5QoGI2IFpLRhOi1bYg5Kfbc0Qqt2u9A0RDUmljkbIFQxs7mh26hkyg7YJvtgiu1TNw05Ju38F0NC0wTsDIX6qT8PUG2GCPWEHSIypa+u7V6TWl9pw2RYNPdbHoHv8Ksw1vObQfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748584194; c=relaxed/simple;
	bh=xzWh+lXLAPFgL1/po9vWiEUmEkh6y3rOqK9rE8U7V9I=;
	h=To:Subject:From:Message-Id:Date; b=hl3IKb8LxIYDBJHlGbhl+dF1SbF6ne6JUFxSdJVNYFVA9vyc3ibBXH35lji9837NHUPTwBPt7oIjoZNn2OgpkRRE3boB57Hth/GEeyQ1bFwwoWGtbzN7APu6qYAPoJ1bCVzdHe4Z1vZxbcHkjRQJUSanX09D+mMpWS70yysa3UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upAZR9XH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upAZR9XH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66ECC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748584193;
	bh=xzWh+lXLAPFgL1/po9vWiEUmEkh6y3rOqK9rE8U7V9I=;
	h=To:Subject:From:Date:From;
	b=upAZR9XHwKMBkr7OWoadpDYcEaYaUCHDMMJ8BbgtEJCwCWpsX4C2dVwGBtIKGFc+r
	 JVpiDAJ2aZ4l6X3rHpNOiF6lygwiBYPCFVZB5ZgGlILAAnAiKh+wv+O4ux5Y4ifm4G
	 dKny12zENqXKWmKn+SwegWkiUipOdP8yo7dBotfK+7fRZZyrq8ymRUD5W0TtQoBuQm
	 1rQTb+ti2DqVXYEVyhsXJuaafsXczYsltd8DfYqYNjnnSmwQ85o6txe9eGlKaNMqR4
	 +z/zEtZ+rbboK2T4sgstk1tJSWfbnK4PNfviGYCv+/1z5JD+c5Utf3snFXj8wXxUYe
	 8n/gDC103mc6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E1C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858419358.18038.12398629954250158314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63928a2876005ab1b5f17c76ca8dcd8978997ff872265e40749fb7bbda9e5193
Date: Fri, 30 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748584193
