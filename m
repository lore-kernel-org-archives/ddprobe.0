Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0FB25634
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723935354; cv=none; b=raNeFhUyJ9ML5/8TrM+0b1rkSkac/nickdCxOeoeV0FBMWupxDE+0b1/URLby0hnulCWRjmtfbCq44ILu0HP8eC3uZRrHzyfnXcQ6dEiwV9XJk3I6kM++PBg0gdlR7RDfv44jhBeKePs7WxBIuD2g0FhC0Ks7J3t5jgI4iGSaC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723935354; c=relaxed/simple;
	bh=lObS3u2718WjWwSJuRD02+kD65mZeQCsD9jw3zyMnj8=;
	h=To:Subject:From:Message-Id:Date; b=jidd7wkpdfCnvxFzahwauXMEshxJ5fyKQJPHe9ZxHoYR9qlHz6DcqcNN4yy764UEdd5G7GXJDulaG/PsEGHtQGUnxYErZLU+hr1R9syC74zlz3U2DsxHcT/o4eWZ4UcEqDjHd4pefW52wOEImty+cmkIkNceVdI4TtnQdO8vCsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQnjGf/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQnjGf/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4284C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723935353;
	bh=lObS3u2718WjWwSJuRD02+kD65mZeQCsD9jw3zyMnj8=;
	h=To:Subject:From:Date:From;
	b=FQnjGf/ZCS3N0QMlZPi6ZxKYVx6vxNGE/ruPpSCBWVPu4Ohlv5ZPt/654gkxAFzoO
	 rcH+c1289LT0DycCCLU+uPYo9B9lREdscpKR4kIODFu/Z+/QhJC4FL+VcG84JQhS6Q
	 cb7EV/wzgt/wgoQ5Klyo/sRDS5+n6ueHb/l9Mh6UYZbDLb+/kAxqm8qC6B3r7Z/1Wz
	 rm2xNf9vGvWz7SFVSQwbHoYd61h4wuLdTBzJUNl7FWnwJ0S2AUryJmWL7Ajx6pdo0f
	 EbhJV205z6j57KJlmgBtU58/Y6nwUPLp7EiL5/rGJFySlvDKkp3UH0RsZnHcOcjGe3
	 0tsaf2vdCJdQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC2EC531DC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393535362.29392.9754517656918577249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a26d906c5e4019b89977804d5b6c9e06e2e4dfd679aac12b7d0a4548e32d0d5
Date: Sat, 17 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723935353
