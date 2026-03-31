Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242521EF39E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774931094; cv=none; b=hiIyltPQSVKB+9iZtsufEBb0GOYTqdBUaF0mUlBAnT/WfmhdOxv64SfDiIkMJhU2cKoYMaTKeYS6CRRHstcPVkRh6FhMszT5oinCHeQ3S2Rxa0xIIC9b4DUbT61ng8wFJku5AXN6iTzRaa8qqh2jqn6VYtL5BFiguu2XCNln+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774931094; c=relaxed/simple;
	bh=ch5g77NeW6epVYKw/YUAuVXjrdNQNinqY9x7GwtGg8w=;
	h=To:Subject:From:Message-Id:Date; b=S0TH74Vvn+VxWD+huFYTSYDpGCVHThbT52oUwsXvs7yFZYmT3CgQGGRcuZUwlMHWV5CoCnENr06XnEiuNFmAz+o/LXCHUpiiR7+VZKcY1JKsLO3XoV5r3nJoLGKdB8tAhzb8L1iqAgegNqmaGiPOSSxWImcDWTO9Vsv9x1/igv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZO+QE3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZO+QE3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFFBC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774931093;
	bh=ch5g77NeW6epVYKw/YUAuVXjrdNQNinqY9x7GwtGg8w=;
	h=To:Subject:From:Date:From;
	b=MZO+QE3Zp4JsvdD0rTBIm4gfaEAN/kBQBkofxM9nPQyh2zaBQ7z0yfuGqA6I0+fn9
	 k4pjHnGZRYvXkZawfOrAUj5eXHKzjM7EvratDWJUraA7yf74uS4QMnUe8wuIhgy6AP
	 PJ+/T3FyCQBwqQG19yeCFgDdQU+VFWx2CTNpMiS+N1F6+nR1OH2DzJOhk7snuOzvrX
	 T+pMu24Ludj9zjVSgrHaqoKF62LaYo3qhEw2Wjw7M0yAsQeMwt3Qb3ZwiQb14hvKIB
	 7JYTEof3v2B+FTAcCV8S4cFA5wCQ8RGsN3JW7+VgyjT1upRkOEo/igfXgQmneQeyX1
	 06v1eL5WZyb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97939FF60C5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493109358.10301.17085199948402022707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d351b8f51b32b4a06d685aaaf63479931aca3ee571728d224d6834bfd86e9d29
Date: Tue, 31 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774931093
