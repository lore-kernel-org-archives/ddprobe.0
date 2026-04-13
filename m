Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169A519C546
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776071854; cv=none; b=M3U6Znn9DhZL9iU4nrj5VgWHAirCg6bTZab4X6EZUj9QZqwLWwlep5h/8pkMUEHG82nVayXSlok5X/SEyYtqltF8kwsQ2agCRB7N+jK6hEJopsh2r4ZwuPfpC3L41Vy6M7xrbYpftBjx/iAaqueuHCfgkTh89hVTq4QSJ4Qm9xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776071854; c=relaxed/simple;
	bh=MShbGzb58Ver4sZxiJx8xc2SPmkcyDMHjOx08N83IGo=;
	h=To:Subject:From:Message-Id:Date; b=WMQF5YUFYK7oecxq1xGmeyVyiUQnLYED+ygvwvUoWpujvpXwcjGcmmvMh8D7wv/eJQ/H7Tx9+5tHHiDn/fX+Mzxy0ZvcC01IrvS5KzymS9BIv9yC/xwxDrJ1V4Xup5qfuZu7nSwJJAk+10MYbk9X09bveIzIeh0SKtsGCTKIclU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5LQNfMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5LQNfMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85DAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776071853;
	bh=MShbGzb58Ver4sZxiJx8xc2SPmkcyDMHjOx08N83IGo=;
	h=To:Subject:From:Date:From;
	b=T5LQNfMq1/6KjnHQ7jk8+6Fs15rvkR+Z/IEc7y+vx/auywM5ysMkl+wCZKokn6Fa1
	 1no65ibzPEltf494nvulZVVexXfyV2tdZwrtcLCmFxbUbwAuW7SAMv/vv3xftimUvr
	 Vk/FJ5AMvC7zHQBndSw7V05PkjVCO+Qcos5rtRbzFz/YiA4WJ0ys2rnULMVt0eLiNe
	 M72NVg17xqDhBrPprZKqwrhPHKCr4nxkm3mC2UIl1FlovVOzRu2AIoJtwKiY+9746v
	 2FI2rhinqn7+SwV+iEdutApYnd70Uf9k23S2Vus2j9tPnhfv4fDrWNWk1lZDUt0xi1
	 QWUjtE52ZI/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90B0EBFD16
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607185368.10114.16900423886380415201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd4aad81768eee4dfab8ed83e01c4355635345cfc2f1e1ef39ced0fee8da3a4
Date: Mon, 13 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776071853
