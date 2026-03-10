Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A11D221FCD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773119694; cv=none; b=HBL/FiBtl0CpdhO99bkzKhDz343PcThBKcSoqbonphnc4y5ZIQHvbEei0R4aH05jLUw+Th1XA+Mw6p1KgtfN6XL0BP4K58xnRtaHYT59745r/nQz5e6ND7N5xjV5g1pXb0j501+mgopjBo2fRLT5LArtnsAUVu8QzOtnGH+yvmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773119694; c=relaxed/simple;
	bh=LwKxlav3sKhh/JkgnD9ERxcbL+mm+qBUpSUut/uF3mM=;
	h=To:Subject:From:Message-Id:Date; b=hif4fHzwHYOkP0D3QDWW/Urh1nT75VULl3KL/k8puv//GzhPz6gRZ8OX6HMdblh3bvRpI1M2fyiwg7LQPn9sl8EbkYHvqK3zKDIIxzBdrvfMNKnSwV80FhOLJ017c/fSrod0/4c0nGeE4IuhA+GDvNZhuRHB/iCjZISXmEAyxgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsO8h7Sm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsO8h7Sm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4132C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773119693;
	bh=LwKxlav3sKhh/JkgnD9ERxcbL+mm+qBUpSUut/uF3mM=;
	h=To:Subject:From:Date:From;
	b=LsO8h7Smyigl0lSZ9kyzWXj9dzBB/wov/5nq8KpnvypzZrYCB+0oCLsFo5TVGwUl1
	 u30EcnerZvlGMQncAkTAkkjK/vdEWXmjqVe7B/uMiA9H69gXGx3nczz2EUIcObNr/g
	 INgmDJ0EyBVXVo+Ryu1UtD3mCoJ2xKsSyNw5jdvzxsYeHl3xrK434eiGvWC57XNe+W
	 ceSFVAbM8g3c6RoLVpxvkAcRbw7dYkfpktojtLxXbN/5Q5lL/r73vOJ+CAV2xBoAc9
	 Ww+m0dLi+bZoKm383WMzwRjNpGDQ4ftKW0GelmbMPycTgPjJ8S5DuXwVwY1f2vLhsr
	 gy39BtnEKy28g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F88FCC9C0
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311969358.25466.883200974799799240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c8b8f86dd1295b469db5015cc287a378dac5b701468543ed07c1c0c513e502
Date: Tue, 10 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773119693
