Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338BA218592
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780537474; cv=none; b=u8+x11Fa1lLSJwm8YuBsk+cjoM0nvoHkYsJcRJYb0EJagLCOcFLxfYleyQEma3vmxjvF1QGa8pYRe3fEk59cgvRYEmMh1M7Nl9Tmn0o1iXPFX4M8KFthcnYBYH3qC5YcBDfANuwqCm1jSgr/Wk5ppduheEQ5vB0AgR91D468/fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780537474; c=relaxed/simple;
	bh=eM0znlPGi9hzQDnHoyX9m/0E+jytK/1ZDbGNQs/i2RQ=;
	h=To:Subject:From:Message-Id:Date; b=oJe8Qaxbo1F11VKh4JKytiZbm9QzGD6WVW6DdgBSO7jv9gpqE+p4F/4K1OmOGKUZGDo50WLk3mF9y+sSULc3Up5eTxFdJc+Juks0gbgLAguJkTQvOpXrqW/JZ3T6oQXtv3fVk/5qCBmSv0A8vea6LK9vO7WeoQru/2Hus2n5MJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNKIYn5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNKIYn5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B5EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780537473;
	bh=eM0znlPGi9hzQDnHoyX9m/0E+jytK/1ZDbGNQs/i2RQ=;
	h=To:Subject:From:Date:From;
	b=gNKIYn5VK5R2cChNLN9AWN+1WAL29MTblGQDuZqA6kws0FQHGmrGJa6/0wEeTKO61
	 1mJkViG0GNEU0c2HvfgDLnfhwWcBjLgjfT9Ys+hY35j+4K0u5IQe3y5CWlYpmrm/4Q
	 sya/ByjjDo9hYMs2oeE20CncbZfEPMVEFxtB/vmKl5RgE5f6saYw75YHOp4w61Sfro
	 qlomkAFLUuG6lsdou2LMQKGgDbxvkYeRnBcAAeiufuiz5OvOuX5zoH1lXa5UVZUaFq
	 G9ye1cLb6XH5fKxxAMQh4Xdw3WBPW3j4TcHv38dIMSBVRv8Iyli6+9hUG85wyngiXm
	 YFY4QhD0pkj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E28CD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053747368.2519.9563271134526692805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78c58253c0d7505f02df97f562df4b9cc41e53cefd9a454a186383860880e39
Date: Thu, 04 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780537473
