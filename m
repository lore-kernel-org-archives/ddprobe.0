Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBD9824BD
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769378633; cv=none; b=JK6ycKDZZXOgyJ3lgcFp6BJkZLzCTsPYmV+IxT3q0GuSRtWNNMYJXMnukiHRmOkbv1RM1Q04WtFAFsRWWhf9lEK/55p3dOI+2xTfWPIsPQcL6/M6k7Orw7WJae/EioCIPsddor5ANAC7Mkv6Im9lIbENWIKrHZ3DyOC+xCsyGxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769378633; c=relaxed/simple;
	bh=rDOZURHm8Qk55VRwMsHo5Lz9lgtsoX2U7Uuf4k4qyiw=;
	h=To:Subject:From:Message-Id:Date; b=XaIf8GTtS6Z/O81ZiF0uIT/wRy6b/MGeglQ+0Wp1vPLBOcBxfrmU2y8tv/FppUoe+Iw+a6BS3N07m+pokMCrGLi9HSK2FclMCMXg7RCo+sEkOTLE2jaS0i+nJ2h214yo+Ww2Z5qnvSeLnBIFZPMuLdFUyqsaaUTgf5w+lqmztxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wwu0nsfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wwu0nsfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BCAC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769378633;
	bh=rDOZURHm8Qk55VRwMsHo5Lz9lgtsoX2U7Uuf4k4qyiw=;
	h=To:Subject:From:Date:From;
	b=Wwu0nsfmfo7XQwkgJBY7T85J/jKyk24V+OpvZyoMH2cVHxlUDhPxUd1PYRPzGhe1N
	 crqRKVnaA/4fxk6wcqydQIy8Nkw2QX6lhiCA6q7TkEjaKmhu/0Femp6tAEkbk0PrBX
	 jmuKuq8j+PzSlxaXOVN00AeMN1CV4gZQIckzM93pfKFIvYOf0ys4ikbG8C3lnP/tKa
	 YgKjBBtdU4Hudr/2IDNVYa5jwDtKOjJYDAZpuLWOK1t6L6xMs3Afh8lI7l+d3XOPqm
	 c402quRptNYhnHTq42ryUzvtt+gS/lx90pPMrJXx3siCrd2gtJbYu46KQziKFpgL1o
	 yACxWMDKEJh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3CCD7237B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937863361.25466.14935170160974735176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbce2b99b83f1ade6d9dbb3d459b9cc356ace6688aa35585e94134b4f078717
Date: Sun, 25 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769378633
