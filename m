Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B6F2FFFA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776097054; cv=none; b=YU4hzLu9q+4wFpQy3whAk6uUjrZGIgXRctkR5WUgTSptuIWgT/H65xJIyxF3V5T0o6WpVLVMpij4EDHk0BKRGSXdHHmINKBoMqlWUWrGaxIrcw14V5deyweP1Jn//QUsCyKF3Kp34f3BNtPWD+He6/NSxNJu2uVuvpysauqFIIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776097054; c=relaxed/simple;
	bh=pO3MiL0lTcySTtqOzDWQhvUctZPSBwNHAjAFAPr9kJw=;
	h=To:Subject:From:Message-Id:Date; b=WgLqNuIXZAr94TMKGyhaZdbCYf/VXWelfzpd4jC743V/FDUdmXKmJM0C1tUT+CNo5yNM/1jA34FM4q733NUDpz2n04BofTTPxmAi1y/2ezeinXXEjcqKXtsq52Syfm1JMxsr9AhRUe2Dw08SK5PRLWgijmNmurp0YBZZZEr61JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxN4xW5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxN4xW5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FCDC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776097053;
	bh=pO3MiL0lTcySTtqOzDWQhvUctZPSBwNHAjAFAPr9kJw=;
	h=To:Subject:From:Date:From;
	b=BxN4xW5qHAMhNSZDLWwZA/CCuGNE1cLpi2p0Mq8MtAunKFUaaeUaOGs1H9Im2a5Xe
	 ZNA+pedQFqZq2BYrMq7vZlVikFvsiMs/IVnY28Krf/efT4mDJEQfduupf0CclMMCZt
	 CYpS9Ko1+Nd5xPfkkUBCONPG6v8oASc/zaXfVSefctKvRBvULUiBlimf0FImh22O2Y
	 rBPoqZK6ySZqFc/ObE5WMaGcCxCEuifGHE1SfAlHRNINOPSfforEy36jrw6ezKs1FW
	 ta1i4YVFgWshZOuVQAeskBp4rlXyYK5MZ6Lf/ZzTpxFVXvEki9RiD5GlTQbHQKdne7
	 /2M9tO5/uSCbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E7F34C63
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609705368.3241.8809273806127078658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf359eb0574ae3323fa5676245343854511bee51c69e2677cd4102ab3b0d9e4
Date: Mon, 13 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776097053
