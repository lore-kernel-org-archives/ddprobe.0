Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEE0317708
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755280794; cv=none; b=dKOjTvSozRZHrjrPyZx+Og6ooEn7qfxY+tgz4VR3mZ8Hal09SIbsUKsaU07iM0xYtMJDawBjkHqq/jPQwqRa5kbaSmYAcio45JsOaUnptunel2kWHMdIP4w9jCHJ2zviA7RTCuBAzoNHG4F55UkKUXXTdGLqZh7htsD7u8IHPCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755280794; c=relaxed/simple;
	bh=/Lsi7xY8zhlkrBpm684JxbGSa6+2xUSDuGuEVArLaPI=;
	h=To:Subject:From:Message-Id:Date; b=qGYTq0kYZlK65PKcm9wQGnFHcSJjhU6zs6yJlYWE2RKSkaNlQiP+P3Hbzepk3eDQkn0qEkf3xwtv3aI1qVVHT/6ToNvaeFis71pz4dvlmnFl+rhmoA8J2t2Zv5o5VfwaNfdmg4ymxT9Siak2hzvaOozR2GqwoP52jdSLa2NfY5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuYyt5Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuYyt5Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4923C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755280793;
	bh=/Lsi7xY8zhlkrBpm684JxbGSa6+2xUSDuGuEVArLaPI=;
	h=To:Subject:From:Date:From;
	b=LuYyt5QoPo2xbTf1W+sGhUJvE3r+PQen94EiwHH9p1aVJcIVb09Fjz6ltjIyTJuGb
	 SX8DkJDgcPCssKRg+G/F3vGDNkB8WciaQ/g/YvFUe7yDZkeDfLlQ8ICtfmkso5eMc9
	 I1Ty3cDjtZLXSFXvxwTBVEc+qPlMn3dCDTwC7tEqiiEs9UP/ix00Zl3V13YpFlZC7n
	 xlukyo/m9zaSjD3FTOPdcBF/l5jl9YiA5LSxTXGGnpPWvlLi4hOBBQYBxUdZgD82Ga
	 9LwUPnEAYtowKSeAZe2nWvGwT3UMeDuBKy+uFmerSF03NEOxhyc+iRI3K/zRIUxFaR
	 IWrIaO8sUQJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D7ECA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528079357.27388.17669563751008800382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87f3db97522b9564a1696871707a187a9c44fe43f9dfa59b78842f5e114b1cb
Date: Fri, 15 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755280793
