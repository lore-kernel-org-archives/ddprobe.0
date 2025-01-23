Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470FA1E49B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737596754; cv=none; b=tI8yjyBdtxnRqHUq8+DS7KydOIqRV2XMchEXOlDhT5bYwvDYVL59Ks/iFmCU0RjEfkSLQCMH7N2Nk1aG1LKKY5dUTEbR/UhLkf48QfCTom7X2dMtuBgkSj/leIZbcElMXa1UHV2/Se14QjSH+xp0he/o40EpHLxDigePq7/yB24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737596754; c=relaxed/simple;
	bh=uwxKJIROuubA/byOfXDNGpJ7GSEyBTTpiCfkd52nC/Q=;
	h=To:Subject:From:Message-Id:Date; b=MOQt407IvemTn5ai3NjoH6Sx0JtJVfkx1xksxJXoCmyNzyus6I2VyZ6PGzWTsDaLOXmYWA2W/ncaUdHW7700JwysAkGH2koxLwSuBEBw3iPftafeWIv70qoLzSsTtN8pzI1r+3q9KFwvbDyqNxozezy7KymipFij3zYB3YObEj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dcmp3k/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dcmp3k/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7B6C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737596753;
	bh=uwxKJIROuubA/byOfXDNGpJ7GSEyBTTpiCfkd52nC/Q=;
	h=To:Subject:From:Date:From;
	b=Dcmp3k/BdmtI/ZWk9tgsiQbk9RouVmL1FLRm/z/NzB+KqQUD4bW+PTF/3IMnHwy2K
	 Ehh9t53Lf3KLKQ3rHHFSqULgsusOOZfxsX0dWtPQVzO6b1N3p4jXQePzMI594FXkHK
	 paEybt26cCu0/teDpxj8gji5hYZbWAb3bfCL8AhbfTILcXYmQHMoTzAGsA2tkUeQu3
	 ec9tfLF0Wy4EspA/M02LzM+VyMwXtqvqJkFBS8XEUQpXehNYlOoqohlEk71278O5sK
	 F4Jrmyw4iNktWTLtd9TGM3m4hGz6w/BeovCNuNrl49C8Ur9EV2Sao6pRroRm1Za/lX
	 TeioZv+BJx1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E6C02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173759675357.6341.5723675373758321692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44cbfebc94d5a934eb91baef6338aee68483d0dd879cbf9511d7ad8f2636a27
Date: Thu, 23 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737596753
