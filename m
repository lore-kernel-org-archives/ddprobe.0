Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D211FC3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761356394; cv=none; b=RrrOLbq3+sK3A2C5Fj82xrAFTcfRpXJJBsnKTe+J28YpzgrnO0DnQHD0g5Ce3pkW0NsWARSsU/wSfEB0/pX8PAgBLvx9/6kQMSmexIQBpo8pBk/pM0Hz/lLBcKGH3bjh2lDR3Az05AxTtka+lBo1/jatPCW5TybSQrk2pVhTdXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761356394; c=relaxed/simple;
	bh=emZQjGVCcemc6EnOgJ/N0LW/SmDrvxn4y9ARTMOzWHw=;
	h=To:Subject:From:Message-Id:Date; b=SoHjJ39tPcHI9mdFMi9bPSHQch35h72NggR4j4umPHeOXCAP3gE1M+k0Sn5JpYctF++DNmzQDhswL4Fimimn/P9ZQ0AMnGeG9o+X3fElc3tW5D2RdEKP12pqYOcVjZ2zEBLgQ4uOLiRsgQhJLWJ2R/PD77TSajjS5mSXP78FA08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRXLgBPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRXLgBPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E46C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761356393;
	bh=emZQjGVCcemc6EnOgJ/N0LW/SmDrvxn4y9ARTMOzWHw=;
	h=To:Subject:From:Date:From;
	b=iRXLgBPpIHQP0U/+Pcn7kvaR2vt2TXwNQg2Z3u++9tpQNoc25bU8iD8NOoG3fTfAG
	 vLcqyH9ZIhC+W+Nt+CrVWcSeyG3c3O/g2j8cgV+SJnNCG4+S1FHsHtCwNvW0UWgAJw
	 TkFRvlDLtYkHJ7SUznK6KUcJ2+3R5p06h5ribp808x2hZekpoj0J//FpsFBRaQV+p/
	 5Pq0/VUfy4hPh4OkjmggjWkZpJlCWDziQO7ItrSJEv05oMNqARIVNgOy9TFo0vf2ET
	 NGHobPA+nwjkdiJrIBESvvOhaphQyataQ5/MYl1zAodaALKys1DHQa07vBgQEjo9sx
	 Rd1Uihcj40IvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B9CCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135639357.2416.15593154679170905217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839d653f5013fd3aeb1ee9cff55364b5cf3289d190de947b3ff85651312312f4
Date: Sat, 25 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761356393
