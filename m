Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3442D944F
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747798194; cv=none; b=a8DnLrRWvsgVTXUHtNWPcO3h/LGIzBeON3N9j4k5s6pRzXMplkfBklp0CbnZTAzre4SXRSIF0vWqut7qIfNM2CvDJKgl8Dmr9G4Y1yjoQbfEA4nPmy2fr9JbnCxNYYwQ0G8DZazkwJfmPAtknIROMHOrTeoJtgdKByCV9UMrUqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747798194; c=relaxed/simple;
	bh=W5xv5/hnFLGI9OU1RrMBjUzroC85vdwPHtUPcFSgct8=;
	h=To:Subject:From:Message-Id:Date; b=dKK9tMSd5vSNw3rmthVgyemmfz6Y2ZCfM90ITucvpEV7QoKnDCxZpWnrfkbQiJKhophrN/+06RbzNbTKwyo5lY2I/yibjFrqQ/3z2XdZQMZQELltFAksBQPXRn8FXE9XYcgkGMazUOimtRzl9Xn+9GgFEWvMkXtTZLD0ROmLHT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCpG0zDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCpG0zDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F17C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747798193;
	bh=W5xv5/hnFLGI9OU1RrMBjUzroC85vdwPHtUPcFSgct8=;
	h=To:Subject:From:Date:From;
	b=KCpG0zDwxpvRReu2DBFaI7YgBogf4qDjgbj/Vxm6kXICZ0WADFELSBnFi25zRGMlO
	 mX3zOJzAcnTtTfQqexRwmVXQhFR/uAotoXxVY6jM6VhR5MFm6Wt8tVbojf0p22ZLXu
	 miKOVTCS81K+bBc3u4BFsnX1wcxJdgvxpln5OgUsHytK9f8jQkIyEq8FvMtIG+Qk1d
	 af/IX6oWza84FRxUgABqozdOZgip3SdLxdbk15BKAq0sc/sH3aV7dAeljtKyn1rR2I
	 acsWn4X4BY368Cs6uTH+cMLZTbTYjvxBX7TEeuAmR+rQzPLmvnga6PIJ4J7F171tY+
	 KKY6xu/IUcnCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED74C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779819357.23243.863200725953376404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee00b979774e87be900593bea801ff1b857b86c07821410a1a1621db51c5ff22
Date: Wed, 21 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747798193
