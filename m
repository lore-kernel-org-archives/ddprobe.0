Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C59A46556
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714639943; cv=none; b=Zs0kwCDPAaLovvy88gttnFBW/FDgv+/OtgKoTU15ktGlolRWhgxp62yfwcuZ/HLZkTwYnf+PkYmTWa858vFJHZzMuL0q5FIoAY6xC99K5D8eyiQofH9Xa+9UCYf9AuHYG3sZemeK8L9hiJRRV+2a+qlMrEAW8wnbK5yy0MYXjmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714639943; c=relaxed/simple;
	bh=jJp+uOQUP1+Ktv4Qu91/0Vje5zSsuS09P3G1u51sxqU=;
	h=To:Subject:From:Message-Id:Date; b=YCH4VCUM7Ai5l0QdYNdyxarzgzBGmM8MKLWyC8S5WonLPMWQqmGzvaaxFfOjn/oiZwWul5AStG6UdjJ4br/dwD4OuE9Zd1QC23L+cpe+HRWZ9yO3M6HQOlQOLPjQo9tpeOUtBZti8OgXw5Rvzzwh5ZzEYkWm8QhDeuWtuX9HYjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjIZSk3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjIZSk3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E60A6C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714639942;
	bh=jJp+uOQUP1+Ktv4Qu91/0Vje5zSsuS09P3G1u51sxqU=;
	h=To:Subject:From:Date:From;
	b=WjIZSk3fYsJuuU7qzBKVl7rQjDeZftdQlyz5g684Rzi+YFIgpk/oB3mLk8CQXrG6n
	 i75BSeBzAOKpry/6rbEi+ZV30qjTdRw2LEFCno4f4sPu2Pmscb8Vu8dtCBU5IbmZUs
	 Q0n2MkAsjtrCAYA345X+RWOR/uyck/seHTrzTMjsFlBjgUQCQg+SePWQDw1DZfaJWt
	 LkRcDWC6Loy/eusbyy9p6m8xuJWHUIMzm5Ay0+JY8H0m9FwA1eGBQWBCufjlo9mnW8
	 2K2UhKYAkXIH609JgKzFBgyCyfRCGifEUSF1y9cyAA5zFpYurEEV2p1/msvrnR6ZjT
	 J1+0ttt15E0Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1986C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463994285.26941.1802909711534467153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cde66521ad2eab16d2bc6bc6fd5a2d7bc4379be12eea310cf5ed559744f8abb
Date: Thu, 02 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714639942
