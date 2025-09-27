Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A6213B58B
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758942594; cv=none; b=mkOChGfSCMa0rjY07n7HLX6oVUJtw8ZbyI2UCTvoblG2BMnYCdRRI7+iUva3HJpH702CTv1cX1U9YQtPDAlZytpvwP0LoN01F/BXgbheyIxBRBSt1nTIMMAfAYj8X1qO6M94eub4qHW/l/t/I+tjEVW/BZO8EP+lQ5qRxLH6TLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758942594; c=relaxed/simple;
	bh=wCuz1O4ipkzYH3mBAQ3W49XFqnAJrJRSY2pP1WUMl+0=;
	h=To:Subject:From:Message-Id:Date; b=OYHf8Gaa+vk5CyHgGyRN9vqr2Ca5zVBHd/eEzW734UzkdJas86nMo33UTa+sEHs54RQzHk6+QETekNhgPnYZKFzsyuoPY+MWPL/Ai2VIQOjPql0vhUSNCvhzsnimS6MvySfOlPOmRkC2MRQG7ypNxYnEgGljXtRraBEzLxOkRHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUOkfTm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUOkfTm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D8BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758942593;
	bh=wCuz1O4ipkzYH3mBAQ3W49XFqnAJrJRSY2pP1WUMl+0=;
	h=To:Subject:From:Date:From;
	b=WUOkfTm5GUry2Uic7HMXGU8DjN9rUTGRRgb62jEFd8VM5E6m9M6yrzNA82Q5mLVtq
	 dkkeccjSQs5y+s+vFiGJcharD0MnO4zcl+5nvhLm5ibc49/HvKC4gFdboJNyAV4l07
	 FKqj8GTedb4Z+7F0m0AKz6VHXSOtA8qj4ZbEvgJ1h+RtlayKx4MUtnhl1pALNET+ma
	 dWVHzhdEmJ2vMCy9QYYFoiR8Fku2FwKFy0kRgC8JrV5ppVCu85+DVOTLdZt0TFjO8+
	 eR0b/IryzhMiIErgW07csreh90DTiQIzUYHbQzps6dF6CJ+L0XZ0fgyWbZ4x7VAB8a
	 vEnUq8FcoUbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F118CAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894259357.4744.14562100578061098754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e746e942c92fbab70aa04de652ef3629b0fd6974a857335dd883076cd35c7b8d
Date: Sat, 27 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758942593
