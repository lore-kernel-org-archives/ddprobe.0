Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2407519E819
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774677294; cv=none; b=dbj+GSK4Bj8xQveo4GB63Y6gBAmtXs3QLuFNmKlWRvEFRMTVJPPSrldH0S0Awin985npJbj6eWiA+U8vx0vA3KWlfo7y7gd+k7vV9P26w3I9LDxrYMy4KEpQ9DKj5C5Qu2DVpL5Bo6jdL1Ok3ULlh/KTWrKiNT1LNWyzAxd7+XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774677294; c=relaxed/simple;
	bh=SlOnxEPjpWK03WMiOlD8t9NGs7vdUvIrSbGJpfuvbB8=;
	h=To:Subject:From:Message-Id:Date; b=QBJLuaMhLRRl6jvZwvqIZ3LlgQ2YUhVhDB4SDx2JqrBAxvAJN80Xr4JkwD7j8RFghYqqd5FG9lY0GmafUQGy+Hp9YoYn88SEYP9wfJbH67bWfU7WNX5rPm5yjiiNAy5bzbyl50swLF8Z1u2eccnIvr2Kut4qo2JKimwktEQfPfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFHtG+8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFHtG+8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3665C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774677293;
	bh=SlOnxEPjpWK03WMiOlD8t9NGs7vdUvIrSbGJpfuvbB8=;
	h=To:Subject:From:Date:From;
	b=UFHtG+8P5BBnNMx9ck/f2loPpyKDiN7ZUYDAwOgoaPvUU6eZQD2V+oYHQDzVXTv/x
	 iXSUiDn1J6hstUsBrQkpmRyBAunt43eNILKn0RLUmu9skh0lQkBV8IyGY9t/VboU7P
	 lN11pMeQPhjh6JJvg1+QMdsDjtfmYbsBWSBT8kaJyoqK4Mlg3m9FSWWXAii1Ip8oIY
	 A+YyjpvK5G3I0S7DIbAx2p36X2WbmZWyQmfZVsqgw4FadDFx5H719ig2gQPb2ycBbN
	 G0vzGiEw1CGUtr99mejdN8a5b2QgEjo8zAdBBS/18kyEA+r1u+Yhpn2jiM4Y3UoGeb
	 ck2q9neBOqQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3310F3DD5
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467729358.1851.18212295643904983801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ac10f1287585eec78689f17599fa9fb675f9f746b40e9bb130684601c112e0
Date: Sat, 28 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774677293
