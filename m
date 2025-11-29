Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D25E258EDB
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764396774; cv=none; b=P38zUDbgRaay8/Ah7fUzdb1Eg8lmlk3PMnBpBL+cxmCqEyQCM+CbWnEmLxG3jRiLYDpSiG48uSN9MGlBoUur5Y3lWJ9xTQ1juWmLILduf6n2ohPuWSBRGxqoxmEGUNkd1WSftyStWO1aISBSP/M57qvF/ga9KLbdND7/QXVZSp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764396774; c=relaxed/simple;
	bh=kF0U7WonVDxlsQMV9+XSSVXlXRBiTETWC/Fg7BYAj6A=;
	h=To:Subject:From:Message-Id:Date; b=QqNhttQRJQLbV+w2E2DOz9scd3gzK/OTJGSqsqc7h6pzCGEKz/FDskmRQOE9mYbIHspTImXvIurV0WgdoNGXtQ1J3TgvjkpnYarh3c2cShJhdxaClzXndKvG5U7MsvKaXPWv89M+IYcV8M1LUI2jP2HHABLtBZa+hvJkWs9Cqyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOIniMbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOIniMbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95A7C113D0
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764396773;
	bh=kF0U7WonVDxlsQMV9+XSSVXlXRBiTETWC/Fg7BYAj6A=;
	h=To:Subject:From:Date:From;
	b=bOIniMbs7WWZDF7hASRLRLFYKBamSJj790kJ9/kyTALoNKTwMse5Jfg5IDYhG5AiC
	 DaqWrvYHtsRNUrdpkcYOhsCzVnf3s44h+XpEvS2T9sRO9OCn7Or5gAxuvNQpMsvdeW
	 2TO8iTQneRJn3m4GKlH+nXCP/TW0tTPjGk9x7RMkMZ6D8uqOCk8tLx4A1B+dL9ONuH
	 tsL+eKgnNG5Qdk2/lYtiIRkCn1J4qGCDGHRz3c5JG/gVdHZtAYfUKEm2kTzR6+J/M1
	 NaVXLDK9LXUUBcgos8Fdz02s56BysCedhfVXkVkGBmrhDZONBKhlMHryAusPmMZ80e
	 IgbROktfpbSaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63F1CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439677363.31499.9485731492382247711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddd934df0d055c3ba41eb0080c9a38b8861021302478f5bad0b51039b986aa9
Date: Sat, 29 Nov 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764396773
