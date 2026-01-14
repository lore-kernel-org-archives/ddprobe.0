Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA933793CC
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768377834; cv=none; b=Zo9imErMdmTefSf5lkhHMWFgJHgEVaydkbaTh/VrwUid0s+xPrTlHdnq3PouJ/zKduKQXQERGfgRnC6PdD2nR8RY5wNAj1WuaEiWz0CZ9ynttMfKUglE/Pnrfhbc/eNyW5v7JiHES9ez186A5JOzTzwh2/5H/mqbdmg1tehWHag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768377834; c=relaxed/simple;
	bh=EbyS+0kSnFIHoV5OzYDX87x2dQEFa0nbPxXQeJvqYqY=;
	h=To:Subject:From:Message-Id:Date; b=E2g3dvE6uCP6sxF4TYgfVKYnG4Rpx9fqIy/rMcCTR0MNh3HhrU+cdYfQa3W8eM1VpnBKw+VW3mQ7ZCOgz/TpPBv/Yb8CirlOBbqGYLfEjDywGz/6bRlgNOGyVKlt1oDyUoAMw7yIwXeVjyKkhpxUD9iPv/C0v8sJRbvuwguGEcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=guNqUqA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="guNqUqA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768377833;
	bh=EbyS+0kSnFIHoV5OzYDX87x2dQEFa0nbPxXQeJvqYqY=;
	h=To:Subject:From:Date:From;
	b=guNqUqA49toCIF0q1duLx0TGMFKnTYmJc+Kgcwvn63qsHcJDAo3/+71UDE0xjztii
	 hxL3BCxHW/mjqEC5B2VI/TEig3ZQaFmIHqdWyXSnmWwkorp1CxBqzVEbCe2rwuA6TN
	 eWbI+eeeHDEyMdtANLLA6oF1oMucYKBfvUOxEnA1YZ7ARlJvknTmP3QU2jmyMk2qc+
	 NrIKQvlv00CAVYJ9gut1jVxHr18z9/LKQp+6da0flyzLaCR15/DUZIRl0WO/H46lXf
	 C2lh9ceNlJBKEPhK5+7JebQOSXrXY6iuT8QaspMdvCKLbuMqfAAQy55aDUyfc7nacp
	 TQI6QmAi9Zkgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93697D31A15
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837783359.21068.4065219391863359349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24370f6f1dcdd4927eca449484caaf56b81a080994c887c8cc25116ed46ded80
Date: Wed, 14 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768377833
