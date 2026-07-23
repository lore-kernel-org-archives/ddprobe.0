Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C418262FD0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784847034; cv=none; b=Rz/frrPuGSHbjreRYK5yvI9dl0wGjzT2+pWsORKeunGhwI/jlzwO7moWhVAbG2mcwuBJQmwLSYSKYh8RaeslbI4rMFMCwvMguDuf5pQ83az1xQKbVskxajKUEqNRJSvBvY2I/HRIVHyHBTAOtrs6bgDCc0E7LfUxIMj8xkYpoIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784847034; c=relaxed/simple;
	bh=kTJPzRQ4HitGTCS1D0KK0pRD/vdmy0AZQqfrEyn2/uE=;
	h=To:Subject:From:Message-Id:Date; b=HYsvWxxFDPaTeNrxxYKsL4Wmr4RuE+DrUlc3P+CeBKLi2WbXwa8OauKnPu73KgslwIAmYgdXfvBC36wK/wGyzAbXBeReY0MS4vjAN6LMnvZKAVq8ar8bwIAADgIxo59Y7cZABrOJw2LfK0Zpa4Spgr5lz0N4eN7XXpeeO1xrJr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrS/6eMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrS/6eMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5B8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784847033;
	bh=kTJPzRQ4HitGTCS1D0KK0pRD/vdmy0AZQqfrEyn2/uE=;
	h=To:Subject:From:Date:From;
	b=XrS/6eMVJhHolXK8SHHkiKsPB1LcISZjNwi/QPpxlqjsjumSSxGCgR00kFV+Hilba
	 MopN20Npq/H+8VdidUGXfORYLi9EzK7VVtCs6Q5xeJ4GZgASg/Cucia/f/XZkTl6NY
	 O39ciHP/N6YaZkwUPRcmhDGMikZPFQ1IUDFfxwZrqJ1HCy4E0hJFBiHmDbFP33ghBA
	 hhCb3P7/Mprlku3yFfQVDq5+r6LwLhx+E2Hg5CjW/H3e9TsFIpD4rDEqaxsAzGTu8b
	 ND+j5L0iOSqmiDK2w0MopvQD4fXo3waI9TkBzPDHNzu/vYFVjqqfKN3/JdYGD65TRh
	 SA5AYvcBfTIhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABCEC531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484703368.21744.15383334704730752864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474edf762756a074c3e654b797c865aed257777becca44c2dce5f101b4e731e2
Date: Thu, 23 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784847033
