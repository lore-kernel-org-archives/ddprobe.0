Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228821F7562
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734454554; cv=none; b=m4BOPvseIV1oQpFCqqQ6D4F4+iAJsA0Q2LVRXJFutct58nhpJtDGHpXIgPJSJhRehY9XS5R2E5fYi9fs5weIZmP3/KjEh66Lf6QScScm9BjFQ+AQ75RGILkAZlnlTSh/eW1Gi5WO3YoWPJUBB43ID6Spfyax9RatCQZwGUW4eMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734454554; c=relaxed/simple;
	bh=JZtE6dOcU5wO7VCAvkmqnfrRZThs4J2doOJPBNOoROk=;
	h=To:Subject:From:Message-Id:Date; b=Q9+ZxLW5mJoD54puaORgNOYXpdI337MAvWzVGwGWds4IkHlJrGbzV6AXd3X4b1PFEbJDLoYTUIU81LCiCeVZhlq9L26QQg9u0snGGTX1nNtNu2eigePQ7DwD6qd3MUVN4rb2IUNA4yQzlhg4Gmw3S4pPM7LF/GVIh9kLQVfR9oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzk20TFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzk20TFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260BC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734454553;
	bh=JZtE6dOcU5wO7VCAvkmqnfrRZThs4J2doOJPBNOoROk=;
	h=To:Subject:From:Date:From;
	b=Hzk20TFBW4+ZhYVXMHzgwX9WaA4uolskjkLscUTWWPK9JYKtcUpuz8plvn5u2mYfH
	 eNDp3el2Q5AbzJeXuHUFeoQKhrmjOUovAoEya0OIyKbA2MP5a3f9/30QkNDfqO7a99
	 H0WYEjaYoTSbRtfRBty1ZsZ1zXU6nPVFhigiMpQRrj9YvwmMnH+gdAk02XLQ6m0iCg
	 2sxXWW9q61FoJ9ewqAav3NWFyOH2G9+NmfeZHfN+jp+9puucNvvAPUQGA53Iblgx4B
	 MnQAPt2rmStRCxVexOtippVEk4U330blSbcMdyn14yAil4yE/eNVS4aMXFn4VGPsnS
	 FlMRBws+yTfQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B66E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173445455358.6782.7771667178515738400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24519594629a3e0ed6764bc169ec04636ed6bd478777c76d7b8d9dff74fba290
Date: Tue, 17 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734454553
