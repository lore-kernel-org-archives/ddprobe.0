Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965AD8834
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778326654; cv=none; b=uTM0HDOfSAJJLHLvZ7falOU5QUncYHRgnP3Nzn2KUrmrCmOpKMAkdbNrFfWFTuiznBRn14ynOmfXvOyenkptfWXgMulqwmRvKrRfKqB6PUsCgmnyGcSNsRYaLRDNI7cv4v0dxrt5h7yxSmqsYwtLuR4MQtEGAHjaLSjrFIFf6Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778326654; c=relaxed/simple;
	bh=yn+5IdYxpP+GmlIZRqtMAJ89txNZqUjMy/L5fHxLr8k=;
	h=To:Subject:From:Message-Id:Date; b=hcq7DLyROhHglgp6UQ0VV0iX/Nt1CnsfqwXK7XVTqvYP9N8gpPgvO2vEy0Imt1FDoIK+oBGFY3S/vyH3CXUJZPnktt+6z9AZ999hUsy6E0YTv6if+OWaK6tagnZGZPzIXrY7D1h93zwLSRyh8Mefxu6ii/s6ivqesIYlOZe4YNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNNhV+cQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNNhV+cQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20C54C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778326654;
	bh=yn+5IdYxpP+GmlIZRqtMAJ89txNZqUjMy/L5fHxLr8k=;
	h=To:Subject:From:Date:From;
	b=uNNhV+cQHiMY/UgLxNwAHGSwqw1dQ8Z9/y7MWj5P/0J1ofhPgOXveGtFE7dkqFRcW
	 PWel6JiaUfzzmtrRZkOdgSyu5ROUFATYJMLpivnNSsa/0hABCZkMKDNoES/uBvtSXm
	 Uxyq5nhnOsL5T9lfGu5zu6vaDjM+Xthl4SXJWIwM1qGW2Jm8oGkyW5FbV4YRtwn5DK
	 1wjmU/BOTGlmT4It6fIxOM2QeQQSu/2B1x5d1GLG/t6QNp9dodzKBjkKIRKRzug8Qx
	 a4W4OQnnlR9N4UyWOVOdhXffyyu1LCRnt5s5I8eymvxNdXn87fBPvKdoBbMILlFjzb
	 ru/eZ6YcveIMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 057E6CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832665391.25454.16258515288410896549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3f29d1f790a7ea8736547036867cdeeecf864b88132d3f0a9caf5dcbed68a4
Date: Sat, 09 May 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778326653
