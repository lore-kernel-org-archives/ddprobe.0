Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15344201033
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756578594; cv=none; b=EqDfp7fhyJiMpFIdBe3CugBPZo+l4Yqv2C6BGIozDhD9iLWHLot+s6JRY1v299Umj3gmETz6IlpZvjVJ6yWCgnBCwJQhQFyNHVQKmoUNPsVQyV07DkHXSvxzk6d1FIPt7aIw2Br1kimKFg/F+2THZBJhfERbRWWsk3C5FmBuv3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756578594; c=relaxed/simple;
	bh=AMdNkTnRkzkPLsi8yN7GDpagh9oSF+UPDgj5K2UMuC8=;
	h=To:Subject:From:Message-Id:Date; b=fEI0HKHKryu8VZ/VvWKAUNEvJBHca+qi4XQ/lWlLTssUpf4ByeaIG9U+J6EnBXpnNQK+AZa4pisXT/eiG+WFw4wfzGItoH7qVx26vfZAexBN5kaKlAdwGEsS3B0DWlqiEwJGhV/65zUnCfEwOBHce8Okd5z3xs5u63TtR4BYJaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyrNkcZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyrNkcZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72B1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756578593;
	bh=AMdNkTnRkzkPLsi8yN7GDpagh9oSF+UPDgj5K2UMuC8=;
	h=To:Subject:From:Date:From;
	b=AyrNkcZWULCsHuquEhdtpMpAJxrHLmiGD0jqoqbmjBG20NBl0G9eVvRzSlRTji41E
	 AmL9l0ediI+/c6O+Ljdx8fWwI2kgAjUOM5/6vjLHCzr6mCk0wzbKfU85ArLPHJrg4/
	 Zn6wWM6iJxETPOsT482znd/2B8rKKtEx7P7kaExs917IcA4m+voBEfqsZINY017jsT
	 9K47aNsGddaymtflwFjoJfkUGEb5fwMK4Y+NSjR1HiWjYSkGLBSwfdGDTH+kCwGJU4
	 Q8+WB9Ai2R5zQMMcFgGrjlbBw29xUgFJiZpgB/r7Nlw6cJiNCC+q2VH/0tzBnj+hSt
	 qSPLFsX+4pgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92518CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657859357.27226.7614136915023753806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8596845fcee0069423b752b22c2f38bf59373903d5995ecba159d435ce950f
Date: Sat, 30 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756578593
