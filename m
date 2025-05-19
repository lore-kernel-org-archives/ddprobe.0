Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375AA4C92
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747651194; cv=none; b=nF3A2N7f9SishkR0haitIDLV2JhEeagbinFOu0T8FIVsAqbpBRvgKh7CvdNO4ax02lJX7ZlBanuuQ7IJPAT2w+p85W7MOGwHn1Z0e/ck7eUC5wtOM4g7fKfEI1bZSzhPhKsI5OoOrBNLa31q/nEdv0oJ9OOZVWQYfOHmnkGUhig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747651194; c=relaxed/simple;
	bh=ngNv5WwW9GtA2iu3WuvylUKwWquwO+8C+G4ziJzh1Yo=;
	h=To:Subject:From:Message-Id:Date; b=tcJ8YZa5tqKle5zb7ifbLlUEcv+xOlbJ3kya7dka/OUuvn/GCUUJ2N0QN7O8yYkGPXhaGhgGvLWRgcDm3Ie5e3xnCC/N8uCpn6f3ME3djoEHP6mJR8UasZdI+KJLzSh+Q5tpjTz1a2ZKAsValDge+sRRmrQhfCJYnp8KcV9/Mxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaUgcnxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaUgcnxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1025C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747651193;
	bh=ngNv5WwW9GtA2iu3WuvylUKwWquwO+8C+G4ziJzh1Yo=;
	h=To:Subject:From:Date:From;
	b=NaUgcnxyo9mA+2dmqOWGFfaWWs1dGSuOOuHF+sYcI4JznMq2L/8fEDOVOhPNljQ/q
	 GOEImqHCGoWYlb5TN3iLXS614tdIr5osWsycCnlJobj6E87M+znoXOYtUTEFE4Ob5K
	 Ux5VrXioMD9GAQ0s3kLuiCk7cJ5+FFYl1bbZmnkTUA3OEFDniLgl2sIf2l8k48p8/u
	 xh4fbGiMWf/Fh/Fm+2gVBpBmucCaglo7tRn4ilEOJswE0w0V4HgLLovO8IrVxxV70O
	 heGoJ7SP33TZMmU979hdEQ1NF6zOyfAOXzH7JUfHtLsMp9SoxpybRRfcPMc4ur/iwu
	 7XF7U0IxR2ZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F339C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765119357.4483.6974701250876759243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab68561c1ce09bdbc4129ba3d0714010b0dafb3d1e7266234c500cb26aa19a6f
Date: Mon, 19 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747651193
