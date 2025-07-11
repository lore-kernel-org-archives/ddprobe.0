Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC911D6DB9
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752214794; cv=none; b=FRAoF48e3lhxOvQ9esX/CGYNkTxBrE78XqX6cBCN3kQjISMZJJ8jxaKlmrsez71PZJ5w50UFi+VazaobdqkJFUKAveIMpxydkvKTtX1e6bhMc2KAqjG1kZgY+Ei5S1oIEv9oF2gKqANML+bSemeP8sbtREEpLpoHqz48GFzqNPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752214794; c=relaxed/simple;
	bh=JkrwwqZPsj1ULxNX75jsiplmVisPNiPZV2jLwDAkIIY=;
	h=To:Subject:From:Message-Id:Date; b=tt/kgT9Z4tvpGriXkH7BZFmondgHWOMTIDbwERvVGHzV6/CbEV75Vpu2vMLL0r1UBs5n2QBfUFq148Hrw4ZIYtTPCfct7aMY39Da+4ttrqM96EWKkkgbh9oqenmYTbvZ2612C6+3DhbbY/DDAx5L9GBLx8AzZfkxYwll5iqJ7OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHi3ShY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHi3ShY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0DDC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752214793;
	bh=JkrwwqZPsj1ULxNX75jsiplmVisPNiPZV2jLwDAkIIY=;
	h=To:Subject:From:Date:From;
	b=KHi3ShY6NE8UKG76uTr64OuwMJiuj0IVwU6BwxZI3nHH6ZWkbpCr2uqf71pUaNxTO
	 wVBFGN9w6TQD3uITNKBhZtFv92hxaiXOCrZiW2Krg+16qm20hHxip6RdOnhVdK9mi5
	 SHw02cf6LafKcBJL6/p30aLMMgPyrNzP8kEv6++uE0cL0UZ3YRgRxdjpzBnOz/I/dp
	 pNxVl6NNBAN0xgrqa4kpiw6HEAsT2EzFtQalsbvt5HlpSVBqC2HyhFH1K7eyAYlOxG
	 tl/KRV5QgTuH3jZ3/Yioi5SNyM+W9I3E3WodfPjcCPGIZmmH/sP/9P0+qxPGS2QHUB
	 HJkgd2jqp/9nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F304C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221479357.32738.3338581548728449186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ad62ab0cbc2a4c1981bb88ddcb5fbae7dd306049d62409cef5c839922ddcd5
Date: Fri, 11 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752214793
