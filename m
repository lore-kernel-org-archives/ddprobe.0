Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F858369999
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773818094; cv=none; b=Wssc+z01QM6fNmRRszxy+fwMzLQTgeDw2ug3I4a3HeCXyuaGjopAwBeahH1g3Mh6xb+55Aw+3DZ7dCo38FUvjQIQgNCN4IAS5wxOM2XMeywPCgvE1R09G9CebPUf+nSzXKjKOEW/5FF81ojdfn1r6beqkfSiwRqcLgyWWoBl924=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773818094; c=relaxed/simple;
	bh=a+EiwwzdbQ/bTyCS71gMsmcXVKR1CGN2oqKPQpMuuTo=;
	h=To:Subject:From:Message-Id:Date; b=phTAhN9d4HgtKutksROfOn8hLzmI3YhiKRukMWLYrIiUx8RlRUPg5oQlJNJMeWk17v0JsPEczk/n4jm/M6vCmFq/QoJvXjBXaBuPFtnsnevtLGI7Ln391mOO0Ko8Upa3XfRo8UyHP9N/bMbeRB5L6gC0STgfEybXX0tbUrvMBvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exXUYo+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exXUYo+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD51CC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773818093;
	bh=a+EiwwzdbQ/bTyCS71gMsmcXVKR1CGN2oqKPQpMuuTo=;
	h=To:Subject:From:Date:From;
	b=exXUYo+etwjANZrvydNSBLLd+vTUm0Iv6ZEP4slhrzwBrNZkEb4+c6xMA5Fir4x1G
	 Nrc2FnZU8DcaWxq0//K1MYNXYtyvJFfAFLJ0T+ZufSNOHoEu2Vlxw6e/CCnHCFPQJN
	 +9kBCaXIa0hCgxJjnia+bGUWnoXxoUS1tes++cet+VXbX1lFkxkEzm2SkFQWkwbedZ
	 TL3kgd5lw/r9H5hCxou1hfwbU9lsp/GRSu00V8kZ0HxFY5BhdN7jTBEDMzTDRgKtPY
	 5lF3vzFPFx1O5xENVs4yEppZHCksXZWy9NuRqoMAt1mawswfHKRcsClXaK9kfAAS8e
	 Ac2BaOok893sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A4FCD0C5
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381809357.478.11648175540404791358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15abc668be880b2af1cb5b3deb9b40bae495a49e0a8294c5639f2e9eace04313
Date: Wed, 18 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773818093
