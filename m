Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAA613D0905
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778363314; cv=none; b=Khz8ovah5wzgjWjcFmzdmXhMQBi6gXHLWwSUdFhLdcBZZ6Hi7Ej0PY5q1jByl0Uz81GJN980F7WKhy6t+dgtcennOYXtyrDfzzLpVwWD6tSyM/FwVt7MW/mzvHHaHt5BSehz/7ewd/tMN+Xer5+wd41+/mZLIRUYasV00JR5P7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778363314; c=relaxed/simple;
	bh=Qo2pOHJz7Qf2fu3CBYDqqVWjbztWdd2xXepiGfD5SGM=;
	h=To:Subject:From:Message-Id:Date; b=PzseZTIYC+HzL1SArL4YTgx6pXrscBlVEbxg1vDRnmxjEL1Xq9SUR2QZfHTA7UC3ykIbe3Dz2rHiUUE8/0ZQsv6hfgq1uPp3FXZaJI6jN6/yU+FzhwvZjJ2mH5sLZzhvc8XzUxbius+dxhRvilNnq8qEL4WbYwqmWN+TOOiQb3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKGqNHtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKGqNHtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D27AC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778363314;
	bh=Qo2pOHJz7Qf2fu3CBYDqqVWjbztWdd2xXepiGfD5SGM=;
	h=To:Subject:From:Date:From;
	b=QKGqNHtTha427LPLEs3lDni03rWrnK0K02z1AT/YNuI28IeM3ZhGcUy2bzRgCpgTM
	 xgTpJ7jmS9kpAsBupiNjRZ4ZeHBxB8TvHYyFfOkfz2xqiavl5oUXTfEPeDebMTqG15
	 c0gEsclUozf5mKqK7fzpx0m+F5+CYKC4GaVvHpiWm5hh54X3i11k8VKXgIsqn5ZlEy
	 NN/2p2npdUKStNHlkp58xOmSBaqgUnTfkCGcreSLG1jbarcQ6WR8whKqYrNIsu1WpO
	 ix/lD+OPBD5my7qdtLH78ICBsF8VoMjOuEgIozhzIoiJSTCrZpTP003/zcXG4OqYT2
	 hyjPsflf3zlcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB761CD37B2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836331391.30634.5855836304363380856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0de0aabf18c415a71d3c61b59a42fc4d197c1c66b9bc93e00299f0385321652
Date: Sat, 09 May 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778363313
