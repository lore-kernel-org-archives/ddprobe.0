Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C641CA85
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722576354; cv=none; b=DJ42MZa41YM4z4bBhbYG1Wp9GWkNLGqhK/AeZBBA3S3J0WbREuiABK1rM5h9sop6nbXSfXETOPibvb/nGqf0dRSEc9/dOVmuMeZmgSHbls8pVM8x4QhKg0YNVnvQAobQ0wxCyJFHzMFXjqpN1zyMcIchkx60QOYa8jJsAaQ2Kg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722576354; c=relaxed/simple;
	bh=4+0rK5fR6112VKUcOuDyvE47I808DP0lTr3sXF5c0K8=;
	h=To:Subject:From:Message-Id:Date; b=kMEGmpPERAM05qFa1BWhReagNdDOJY+HydxPZ1nyC56ZZmnUaeNaQGEjH3EwH9Lr+MRFX8RwxkrBGTfpj1v1BpQOW60eidwBzIt5hrCY6LhvZFms6DYoMvcR3z7onU1rj3fG2N0lUN0ylNT0RjumB3XXPIBtjli14i/c4Z/iWxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeyrO8vj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeyrO8vj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C61F0C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722576353;
	bh=4+0rK5fR6112VKUcOuDyvE47I808DP0lTr3sXF5c0K8=;
	h=To:Subject:From:Date:From;
	b=GeyrO8vjLkNbkyN7dVKsfHULYP283ggOIZtyG8pjYUr08I9q/q1nAXgkRofdBKMuE
	 T26Gd9sU8x1o/Ka54u1lgRNa7renxuEwM1AOFccmZzyvdKFRRAXhoaBL72Awh1h99L
	 E1Vy+CLWGsxnxuJGkkQPv7CgShWkY/WjI9ksPB123V8m5U6fxFyINY5ntBaabsMwjv
	 Kc/P9ycBW4ul0BibeuFwe3SN203nqB7Z7u7m7oUNOvQ6GRnw2oyLTBnhQ11S7jtCQ5
	 iJKqsFt4egtmhLzajMRF7xy2vx9c2XEOBSaU6nHYoAUr+r1X0oWH6JwZt4NI9sFZF1
	 xYmC+kGDTnUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C94C52D70
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257635364.4215.3076480391380323883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39105b7049974ddf14933933f7ab79f9282255ddccc21cd04741f06bfa01dda0
Date: Fri, 02 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722576353
