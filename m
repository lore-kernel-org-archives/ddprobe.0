Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3FB11DF269
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762713593; cv=none; b=dNWKhgPlczZhwHJpp/fFKiFC0yy0D6A/hlIfX51y4/r9OhwrfL3MIsPHGcgktQTy6SWQpTI3/Tegfp8NSfCyfUZJ8kkd8R2sdgZ3GGrz0FLAb1qA/Hnvvg+o3BWm1DeFGkBzC3Xwgk20mzk7IzqMzDWaxq5C+AjEclmcACeV0Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762713593; c=relaxed/simple;
	bh=WKYKXtC60b5ZAbvUt1mWYyzq+W0KkQY/xf2Q9tdzBBc=;
	h=To:Subject:From:Message-Id:Date; b=saoUZq2t26bL0CqzFPkQkjcg6dqcu0EtySJnSUJ78UmoNYbEEnT6r7t1LzxlqHWpbpG3gT82L3Ck5FUm2p/1klcdiHY5YnKtitk+4Cf0cosDFPPj0wnj35obH1g4o/PPx9JhZ7izzZ/m/DJQqrN8/C+DHE6Zwz3N4qVBTdJC8j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzNP0u56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzNP0u56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4653C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762713593;
	bh=WKYKXtC60b5ZAbvUt1mWYyzq+W0KkQY/xf2Q9tdzBBc=;
	h=To:Subject:From:Date:From;
	b=NzNP0u56A7DnGjyg9IJaEaUYDp6h4FQRAhxs+0ScCa2IgDwZkvVGKRyM45usegfil
	 1xAF9YguRaa/oPus+smt6liDECL3DYVsmhOFi/6+shVzn1B/HKSzsNQV/mtlQrFWZF
	 /xhWgXfy6sQrWLGkBovjOGozw2XWGPkooSOhjN4tX335nw0oPV9w2ykeXhI+V0rJ5J
	 tJTU/4vOgWw8uWFp7pt2ef7i28H4e8GdUjAgTRPcaNwaeX9ExJTSEnXrFWjsQ/6n5Q
	 MIfSpS29LCrw2ZoFyXyIRpTsahUc8O6xOKfMNZYlsePBxdf5jEOhbeFX+XZWFshV4m
	 c85+uTOJPTdcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B9CCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271359358.7229.7126093116883876891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82da20a84667ea555143da00ae4817977b20cbf1a307e532115c8921a87c2ae0
Date: Sun, 09 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762713593
