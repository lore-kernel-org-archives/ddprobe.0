Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CA9DF6C
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787979634; cv=none; b=EskyHuP59oetkYqOWQ/uns+iHCpkP/4bti+dz2MTBMCnceckoQaG91rQNTwATQ7jT1/4iDQCJYXuaou6Uz33ZEZLpplPwONJ8EQjftT/E++To6MoGHqvgVbyrtaFerYw1aOhDD5XsKi7s2mDPK8fMuZh4liX7D2h2lliyNIhiMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787979634; c=relaxed/simple;
	bh=/D8MirDLuxCb5JHUZHtR7YyR4lS+MG1BjWysnIibLUo=;
	h=To:Subject:From:Message-Id:Date; b=ObC+IzVu5uQyFdb3C4yrBWwpWfcTSs5KzEJyKsqbKZVGbe+Nenw+UllpV8+Jrs9xFm7X8FGnElqLXZUYNUvFV9mBVnuRK6pp4TkW9WZT9tX4LGUyWgdSFES+pE5Qe+bkxf0wQFpIAlsVpTIFf9oHwsHZqGScFt3CDs4ZnYvtMZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0EsHOXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0EsHOXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D071EC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787979633;
	bh=/D8MirDLuxCb5JHUZHtR7YyR4lS+MG1BjWysnIibLUo=;
	h=To:Subject:From:Date:From;
	b=U0EsHOXAgJBv2eRYuVdbAOr1cRP+2kf+8eKz/D2qjUP+b8a57LQUBLXxgua5wDGUB
	 LbxUVgLtUiaIvasAqxxZYBvmjSTvPZXlvmI5AUZG///BH0DkkFJ8XBDInPCe9wKMbN
	 XoH0TXmqmkAjsLK7qLIZRrsBvqd17/MBYrF/Nh2MzfAABEnffzK7Hm3ZsdAVMvVDkB
	 lOLZKOrF8GaTuKsNjEh9L7sNLYBIK6XhaV8AX0bU8GgH7AmWi8zl7e3Ib1O5qyQ4no
	 MgcOHCpgxqcIe5YvDaA/hz0EB+tfYYyrQ+JmFdytCa975208E9WBMviAOzfzDPG0UB
	 EmIV+iPrCn4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3CEC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797963368.8064.6273973233552056983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6329338e764ab84ef5e639fcbfee35cd75ffc07aecabc07fea89eb0566df878
Date: Sat, 29 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787979633
