Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088601B267
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709541497; cv=none; b=uhjECX2geeGnuAuOtenecMYU6WJmSaZsh/e4Ll1AgUwx2rDU8cTc3ZGsdviUiooXXnhCq4X227oQlw9BCoCG30+qS6KtesuWxfXxPHdABD6d7U0EhEXQcBpn2/YX8+xijZFl5amq4o6zsiDlLWIFgwApUtpmCMOfRHsSFyXwqqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709541497; c=relaxed/simple;
	bh=enYE1NKDIKOlCg6sT0fzFyB4Q9/5ulfZTeQ5plwmxEU=;
	h=To:Subject:From:Message-Id:Date; b=aaLHwgPbu6P1UJkPb+Fz7sVFXWAZnayRKfwZzHhI1j7J2Ve1R6xoA/HniWPpiezem5+bYK/UX4x8WimLLh1W96/w2Ea6EEJPulwiO8vaGJHRdrB//Mq4UhbhqX/t1y93LxionZ72jvt3ezoVQYuMJlGxMTqUFGe/ogw+aFa0BFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2asinqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2asinqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DF3C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709541496;
	bh=enYE1NKDIKOlCg6sT0fzFyB4Q9/5ulfZTeQ5plwmxEU=;
	h=To:Subject:From:Date:From;
	b=j2asinqqe5lXW0LLxlDSGKPclne+JK2jIVGqDczbKFNLaFoyiCJW16BzzXA0E9jcW
	 PpN9KBQkWIOVOHLAC4WD9tIUuYfo5IwZZgFP1l+xtateLogDZmjW9UzoTi5p0YsdXk
	 xNMb7m4qpMlQMCIb7mqcjaNFnzGfSpc84H2z548xXBMPkBZub3j/uBx1dSj5zwJeIc
	 xesBu4GDaMw85MyiJeUQeI2bKc3Y112pbVeMMR2ZkNA9bUViy9TVXejU1BlT3CZPCU
	 uOLX21IhFwWoamt13+EFKGEFHmOk11WMajTHc37M3ev3jpNhbdeFioFKZ2ZxfuZH8K
	 hCYp/IYacnH3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F4BC48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170954149641.3889.7972800111024704433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99fba65dca4160b6c20e9fb0597f5e1c1cd1fa6bbd5ccc93a303a4d2475928b
Date: Mon, 04 Mar 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709541496
