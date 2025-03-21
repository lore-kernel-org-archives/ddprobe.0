Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3A61F1527
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742557796; cv=none; b=HEJRSXee7WG0zH0pZM3l0QiIxUEhIO8h78hyH5oj5j3iwfRziUoRE8BGeRb+qpXDTAaJycZwFmKr3l6MPdrAoyNFawWzEndvfcilod5k/HGeMLyjTZiewdqUtZ4cp+5BrzRddKbgwN6QaQyruhE+oESao86/1QCTGzvEFzSVQ4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742557796; c=relaxed/simple;
	bh=hME5MQeHoLNhbT0qtIYbBK+Cqf7sv9KoZsCQLmvp6nk=;
	h=To:Subject:From:Message-Id:Date; b=P9GFjRCn1UGdHZZqK6OhaRgWfuOZ3yFNOacBDKilflEe/RZRIXQtisCwDbxJvZzLlT0/FjKWoet4I39GGUVzRkWAKP5D94YPApxvJUpUUmNQIfsrEbILNBY1xHGwA8/F/HsFxU7uyiKwPexYfIgcBqNl5599jQ84Wj4kGOEJQqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDeVFv7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDeVFv7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CA2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742557793;
	bh=hME5MQeHoLNhbT0qtIYbBK+Cqf7sv9KoZsCQLmvp6nk=;
	h=To:Subject:From:Date:From;
	b=ZDeVFv7sJhbXJIiatL+hhLaOkyoCTPQB5Drb59mvbXlMhmqdI8etG1LuoOs7JJFwu
	 7RZZuPVeE8GYLjERt3tbrcb0S5hGspkiNurjSSsgYOIHeBIizNF5SKVZqiuoe8MmPj
	 g5KrM4HVYIRKtDDzAAagkx97NWCls+O8UVKVgmXoBaBAVVQVv9MewGTtYdURuDbftw
	 hduZ/bJr3/6Xv97eKn3MkFcPVcW7XN39kmSWEFqIIagcIGZFclgaI3dxWXRi3UxL9I
	 1qn+J9EEdakqS04QNOYbYl12hR3/Oht2cN8+dXFmR/Tb9pEigMBQk9d45sT6Kr/Geb
	 zcRfdtm/8S4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6272C35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174255779364.2455.16597054106318598047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9775969b70a6f28019fdfee7fe71a1ddc0fc15f05bad221140e3adacb92067
Date: Fri, 21 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742557793
