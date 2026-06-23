Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBA13CC334
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782202594; cv=none; b=cujpxAdJoSf0qmgehVgtYpwf3PhKtXaflIv9Khhr0tnm8/NSZpJnpvHzj2Fb+08aJ83TC0pSFg0uvan5CT0rM7SH+1ZTx30tCUAnfoeX6foqcGkbcEt0UjjO4KjguBXKYyGKYr6yvBrC53e8Hqjdz/CaYc29ZUNWpuWSgmqLSOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782202594; c=relaxed/simple;
	bh=xxNpjwqPHwrFLMFzT/omAvW8wY8OjpNLMJCdfkrDdOA=;
	h=To:Subject:From:Message-Id:Date; b=cTHfz0tO6o3se1AIOlu2Jp/BP08bEfVjjfnNnM9BkbCIQXwIAQLqlS83HNn78cOIGoIEM5oTgrNHg7zhKPUmtTdugdH+ktiqi9k6q4JoyzDBdzGy/Yu1fkdQULIEEhUqTPJSmPpMVyAbxkxIFzx4t4D9fHgdLOgWFfRnXsYWXEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY9mQeAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY9mQeAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45FCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782202593;
	bh=xxNpjwqPHwrFLMFzT/omAvW8wY8OjpNLMJCdfkrDdOA=;
	h=To:Subject:From:Date:From;
	b=YY9mQeAVvmh2K2Wn8/e51u5xriJurW95d6R9qCUoSwExAb1FrdWCADgouOjQ0R/MV
	 4PtJzOnwLOg65K+hveDWaA2Y8jz0HC1XH91SbUVCk/lAEmbRAK1JJtg4JlpTlAEqwE
	 s5RElQp8O8bN0FFVF7ZJS/LZsgjRzBMpknfOTNfrBqi4uCKytJaluVza/sd1FG1lOH
	 EHcM8CwiXCgFvtuoKPkZZZB2DABRlTp2AtOk/IKGGc8v6k5vpKtK32n/WT2mrB0wOo
	 U6gj/r8F++ir+OFx33OyJlxUXIKuu9FqEMxpO6DZCbRMnKCgsYAUwf62JjxczDTqBZ
	 f4vUb3vp1HovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAF8CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220259370.17954.12347919162998227417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f621458ac5a61558e2b40af158fe3b20270a049e046efa090353018cddcb235c
Date: Tue, 23 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782202593
