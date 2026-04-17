Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B5B349AE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776414454; cv=none; b=aHZXh9GIFxrM2XUVuboG2quyg59NcI57L6iRhfxFA9Mx6tmMFo2qUON1gkME/ERiNDabpCGJLgFDeXwTkhdViNHPxRAkHCRCXH+AT3X3uEKPpNQlEM+9iDfrdinD58O0xcHEgPBxt0BcLp/0nCYeynZ24IV+X7DTx/aSuNTCgv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776414454; c=relaxed/simple;
	bh=CgN/hte3/F37EF+2EYhSbH/BvxZkq0KnMXzv7IJABwU=;
	h=To:Subject:From:Message-Id:Date; b=Qs2zla3OoPRkEIJkVeIC71eJk2vB8wNUZ27feAep7iLhG+tDIOrGFIa1YtKwpOkqaGs+IULxZ6o07sHThdNUkjZ4p4hLX4Hm0aT5wKbCo7Jq/NtjHdPLu1cabisNFPRokGVGnccoaoOdc0qarNpDMUl0TtqzSb+FxqASVI9YN/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T12KACZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T12KACZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A28C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776414453;
	bh=CgN/hte3/F37EF+2EYhSbH/BvxZkq0KnMXzv7IJABwU=;
	h=To:Subject:From:Date:From;
	b=T12KACZwkDGf/YXWBJdRmmxQwtegAJYE+BHzkJXxgFjol47RxJBF53vYXWLIFdrHh
	 +nQZIEsUcApxhB6Hczii0uDki4uEoRm/S0tvT8i31B7RP/4auZ6BL5ipZ52NBpD9ZS
	 6giup5oQ/ouG7rDL5A6w2+VaKHrjJOSLjv6axbXMk1/utxXo6bNMgihT8i+3DtIjUh
	 dbgLBdZ2br5F8qNYovGdCSXQxd1LQoVgie9ojc1vYZwfSmtGZ1b4dITwM14RVc7YcH
	 q46u0U7jltWTXNOMsKaLlhAS9yf/xdPS8/AHkD0ys+/muQuUWvZ8YhyHwB+qlKnCYT
	 UTs9sFPLbkdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79BF8DFD0
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641445368.26338.2909643511035521078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c216ce58ebd4368f3c000e3fa92450c92e245dc3da0e7a65abc31b41484433ab
Date: Fri, 17 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776414453
