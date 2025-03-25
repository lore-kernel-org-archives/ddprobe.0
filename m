Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A3A537E9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742904594; cv=none; b=qKCB89xFibhzvojHsP5om/skljY0Bvc2sOjWIU8svuEHENTZSf651hyqPXf0O55kFZ2F+NjeObrMUqj/TVqN5t/fYUkIUuZES0zITu8Yl3mzhPFC0dKM1EUf6pmVLWR9df+B8CI8ZBynYDpDTqmURl4w20X8GHw+NvT9HZ33Vv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742904594; c=relaxed/simple;
	bh=VuvtAVN2N5efe35KOGmv2L1wLbxjTRYEtd8FdzrKMqI=;
	h=To:Subject:From:Message-Id:Date; b=Jw4FCu2PO/PaIok/4qroTvtqZUFvYs9JGy1HtltY001v0+ArzKj0TdnPqmDJrxufksDgqE9Kfx1S5mzqOxurIwdycW4TVUo6gXaxNQw0UJ7a54iIqLM+Usd1SFXpB4e0DKMZbPomEvUMJBaVO57MNbM+gan7T2WMtpuhOrF0F4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JePaksHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JePaksHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4149C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742904593;
	bh=VuvtAVN2N5efe35KOGmv2L1wLbxjTRYEtd8FdzrKMqI=;
	h=To:Subject:From:Date:From;
	b=JePaksHjpPc9hBq6gSdb4AFPXkOq9EctlVuioEYvfM/4q2v/OqBMScoE5efsax7mZ
	 2MBGEaimXdTTlXbfwq2sp7AqnZAkYdCLtqvTglTME8ojg7dfRRO7iIbOXAPdz+YloK
	 huPXqYQe0Jen4HC1hkwx62wjFGwLx0wi1gPBmOnlC88jIxV10f0gX6Soa+1Q4KdsmR
	 CzaEz6DWwuuuI3kTtcNAc3LS7H7P67beSVZv/lCz/duBAlkVrSeu+W25qqqucP30zi
	 1Rb2XInNtBF397X0+uJsGHlYDFYTVQcgfIMon5f7rbJI357njjFYWk18eADipjWKau
	 sx4UoDlqFjk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F98DC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290459364.32555.4278173623041341905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea03bcd0f4f13d9e9f283db3956d45c75a71c49cbcf75bd155c3525a11fc9983
Date: Tue, 25 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742904593
