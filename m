Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D54548EE
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779054634; cv=none; b=uOtky6hDXZ7u4D+mzUOREwWqBurMf9PtwtHXdUDHSs+CgY1b+5Gcsq0TCYKvB/4pkXLkWajhm5A95ynjFg9Xe8Ldfohkxu4BUToPxrWPTrvaSnUCsHlP4bKtqahO5TDzDQPgQEKoCqN0rjuajrn5SVi5KaGVEMu2iJdFUG0TRac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779054634; c=relaxed/simple;
	bh=lHv+/L1ls7gP/3xKVMQcah++dsxH3vxitGb12b2+EW8=;
	h=To:Subject:From:Message-Id:Date; b=G6haWFLedHcWqMrK/eaFMdZZLE9oxchnFyfNJMGtlLc5lwugVAdnc73gfEHU1qH0fGGie66li15sRwK62R4xIOdPnQQsA2zAmLQggDuUU9L5+NUpgR2k1oq5oJGiW6zwEqYP9KkZcF2BT9obM6HRuIfbV7e55PWtNaHeDx+E6ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4WV0rKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4WV0rKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A8CC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779054633;
	bh=lHv+/L1ls7gP/3xKVMQcah++dsxH3vxitGb12b2+EW8=;
	h=To:Subject:From:Date:From;
	b=Q4WV0rKBAHek74go5CkjAo0bK1Q5J0nrLX0MylJeZrjjb06NdJW5wecBd9GxbRYCM
	 3eCPX3z+PnGWWljVCGD+BEfQbiyBKrnSWj73+6WW8tIg9SoP8faSoe84lHFhbJHbJu
	 nRjsW9SmPLGvdo9g2QIlrHCHcqoETVvyUXDTMo6zv2RkZiB3MkHP+gENiAODynLa9F
	 FZoODzQ1A6SNKEXj71EMGXzvrIVEnJPrQn0yKh/Cp1trTf2tABm81xH21uwjr3pkwu
	 U/j/VMexpu1Ik1yFgJKy6YlAP++nf61l2DFiyS8gO5P3zw/A+IigK39RFPIvtPP+aC
	 mNU3nD6LKHjzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7F5CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905463369.11997.14719760418543742213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3742ea888ed42b2d2b745a41c040356cdd2d99591ca80b4c0d12b7561f5996a2
Date: Sun, 17 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779054633
