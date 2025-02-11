Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3183D26157E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739296254; cv=none; b=rzbLGMLov3m3RAMcs9OHR9dKeJ6FMwKOqyNXy3o3YIUqiCkP3lM3yLVVFcJCq6UY+hSpPjwSiH/edZ0W8NLupEevSDh/FtdDkREl7O//9PVddTOYP6VZ0yfP2u6k4Hj0wXVrnIoQFw+LMwg5kOfp2/OnBWADmNajaTbdwJs0Aoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739296254; c=relaxed/simple;
	bh=ZP28oTUGLdcBtGHecuuVXR+q+WllNMW3w6aZ8JanvT0=;
	h=To:Subject:From:Message-Id:Date; b=nfzAwoqApiKqB5s+zELXbhxaCvkpNodRdCm6rNyHyEbWGsB+RqMTf7XGv32tbtRCf/4mPZWT8zmd5SVVxBe/Vp5FmPSnWeE138kWYs76AL/5VeD494oGFOdpVO5S4Ro20P9Za0BUjPinpzPcG1sJQ0ALLC4x2C6/2oAVsGbzPoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrR0XJ70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrR0XJ70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF5EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739296253;
	bh=ZP28oTUGLdcBtGHecuuVXR+q+WllNMW3w6aZ8JanvT0=;
	h=To:Subject:From:Date:From;
	b=lrR0XJ70HPbpE9Gk3eSiIVGoSTfWYZO4Af0t/FKh5SlHHwdaM+NOw2ohvqW0iER76
	 WbYgLXwRNxZZ1raYy0krdJMr0Qz4eWrzc3vi0QWls1ORJr/zMbSmVB33uoJRizpAmp
	 7fm113rRbZ9xug6vN2n7PAzDTG8RE1niw2y0mQbx1hbqzhlR8HNm/iEwnhiglBzkta
	 xEdYlidCoavtTrtpIMf2bqNOVgHcN/DZrDWMHLxajDZh4av4gpPR0efDWra0qgwjJb
	 UqTLaoEAo2l9sNxdkp9OqJipKclljAD1p8gYugSmS0Ty8y1Pmpi4HTlMcrgYgslLdX
	 e1sEXn3eOPk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E6C021A1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173929625358.4218.7113269366497868372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f71613f81329e79ab1620eb7907293d40b320cfcfd632213834853593765f8
Date: Tue, 11 Feb 2025 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739296253
