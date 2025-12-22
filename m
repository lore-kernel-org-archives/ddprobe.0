Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0BFA945
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766363634; cv=none; b=JvRmCErOyWcX9BKiZHYlX88iBatNos6/XKomfyuc7CewBejTQy0rshOv9AWEtWX3ZIZeRNz5wKeBb1e71VBmE76r9bHpSIhlOCJaxKDBcb3diUraIR5U0/+JUvpi/jFBU/dEoaAuSX9PcV2E5snWFOIJBSjHXjg+oEDm7fCejfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766363634; c=relaxed/simple;
	bh=Wji1RBAWccMh4tDk9vbT68ctDKWYZHyNKHB8XHKqmLk=;
	h=To:Subject:From:Message-Id:Date; b=J5IkAVaWpFMgDllblavsN2w4Uea1EbkddiWiZoRGaCFqLiyPGqAeBbvLH9b3uopjViVGkO4yCwWCOI8KVcgqLvoQBT11S6QLxG05LJ21lhlYKQzd5/wg8i9lIbCR/Fh/u0o/GZo8Ul/UhGkKwcaXiKdRsd8fQgCFMLsNJCnrPlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oo4HcaH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oo4HcaH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3333C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766363633;
	bh=Wji1RBAWccMh4tDk9vbT68ctDKWYZHyNKHB8XHKqmLk=;
	h=To:Subject:From:Date:From;
	b=oo4HcaH4FvJtIhmyJ5lAIJ22sq4ibS0E40sdQ66+KS4nfrvLUQuYxh39RIG6fLpek
	 fXn9qtYmC3hy2f9vtj+zSl4AjGs+ExaG9qSDKM0YP0FRYhZkTmzVyPnV6eRR96cvcq
	 eTiUoKZUTsHu+NXROsr1ljLOg9hDqc4MV0H91Bh6DcCclJE+X1P9sOsQG9Rf46p0ZY
	 WovRn2BNTJN7cxdMAaPP4KxWCYTddzpgVQ7R6/whS8VNHaiXXoFy3rDwIId3+6v0H7
	 Y5cXcWfMPI72wIejdeU+OCAnOVV6vUadMjsCbVxQ4RwT1nqcNJRybYQrIk+0DVMzSK
	 Vx30/RViKAL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1CD68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636363358.8402.13459928260417371410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cbfc00cb739ebb6dda0029fa7779a31d816cb469036b3b64ba35f62835fd31a
Date: Mon, 22 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766363633
