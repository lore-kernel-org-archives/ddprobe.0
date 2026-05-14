Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2139F39A070
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778752234; cv=none; b=bMRipousu4JAP8+VtujEYQ9tQy+tq/8aSef3CMrI5CnAWYQdJJNrsFsL9U+sXXYrvnZFBQoO8Y6UqBYtyz6GYtqLbNrIsJfBo6cyxAzxw0cBjs/TTJ/YbgmmAnYmQwme/qU/x/SFgc6u3bBB7OvLYCDwxP9m0k5CBvaxcy80psI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778752234; c=relaxed/simple;
	bh=Q0YN/GZSBTslDt7/3x82L/UzmuJrTNJWHeMzj6r6SgI=;
	h=To:Subject:From:Message-Id:Date; b=Udb9TgAoyh1sNCepBs9BN/ImyNEpJIVtw/IAupKB8L8NCPZier/Pd4+O7oy/kwlMSnt/nBEiivG7JjqftbqF6LF4nVqQCW/UTMm2vOqkqewKe4kHhNGKVfFMV4M/inotrLRfLrLSKIxCZMsRmp+cEoC8RMT9XynScVB8WUHYfsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2WRFpf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2WRFpf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD160C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778752233;
	bh=Q0YN/GZSBTslDt7/3x82L/UzmuJrTNJWHeMzj6r6SgI=;
	h=To:Subject:From:Date:From;
	b=F2WRFpf6XibxQUj3CayZXm0KHS6RVCK5/WrxFkoTFf3425gLVrtFNl4zeThqOvkQ9
	 MSpTYwRLaJvKM12hJ1RvLOrf1non0n2KZK8xuK5iOnzhLwbYluIL0RcMhJOpjLZMAy
	 Drpud4JhdhS2UeRKh+udEF54Ci4Kw85QJBZh1uBnT3QezFXYeznwFZeewNchOV2B7o
	 UL5TafAEPp3ZHJiUdrILBAgRD/oL/8DolVpRfCw9/Iu/1RinYjOUQc+6CZd6kh2na2
	 uYh8QWt0W1xYrKwpz9UrtMGboRVRm4BqJZM33hA6vrp5GJqkRxy+eGrujfAX55WJAH
	 oyru8P7CRnlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7C0CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875223370.29542.1035972337028612986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dabe655fc10968866c5924042c26c9ed0095518b27701bc13c9d06818908c2be
Date: Thu, 14 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778752233
