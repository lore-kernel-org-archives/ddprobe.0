Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7C6345CDA
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779732154; cv=none; b=fQdiidr4i8RBG0Nn5U6kKx214mSRIXjdd3Q7932GGYsHL/MvxI4r3ts/WgPh6V2jT9Ukk4yWaScY1s8rt5wuGN5JtM80BfmuJPLbiXm6nRFuvfe1nLqxEeqL5ENQDAs4EId3PXWRgsJQlfwzZZP+ln5GPaiozxJd5AEEzfAubeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779732154; c=relaxed/simple;
	bh=1de8fqdCf+yvw6bhQ3cCib3zj7QpJrayOy++CB9K+3w=;
	h=To:Subject:From:Message-Id:Date; b=nobRZc6+xhPNuQGKTuWjDNNG3EK9kbKjSH7WbUvajwNFLedyz0fVYg4vW+E/FPSZ/qLUVLzFbg5JtzsU3fWnaIwO/sYSA6q9qciygFuHAOP+3Zqcy9mCp1gwW4ri8v9rjeG8HnvLowhYJTAa75M9QP6c1T2jPeoDTDK0WhyL+uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJxgOGwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJxgOGwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0903C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779732153;
	bh=1de8fqdCf+yvw6bhQ3cCib3zj7QpJrayOy++CB9K+3w=;
	h=To:Subject:From:Date:From;
	b=XJxgOGwThyJ1Q6t1FNx+aoEuxtdmHpBusNp7G1SWFpPS6Nve4tp9hz2HpZEomz5aw
	 Rr6QbGiyIRXGiW4IWESz3QjRCFpcOBsVJ+HSBie7l8Oqh1apaKbVjsANqrnQdIiXUX
	 t5DMqhIFnxGfJc2ZG06u0AY4dPdtXzymCN5RuIE7Rna2RiOKRI9LEqZb5I1qUWk7ur
	 Zz5NHfJGfNm1LSJrOkTb4f/QB/KFYY78VOJRw+SeWDGwJaXKRNDCcSaySB21+qvKOH
	 fmVpN59cg02VPa6FMA145ZUwOIrqdv7IGasX1DRFq0p8UBiD8kqMXAC3wgP18ILJ9V
	 wcKNeEHrc9iAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98EDCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973215368.20438.17645285460241018434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77786ad797a243160345e5bd4f826b71fca53b97538710425cc0336cdd6c427
Date: Mon, 25 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779732153
