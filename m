Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE2F10F1
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787975434; cv=none; b=WdV7FVTU3RZ+s6gj+/r+DsnjuwcZax7oij/PQOymlTmXSsXI2oeEONkScrNURe5Apmg9jK466hiiWITR6hhVOM6kyvNnjvXdhc4Ecs5ZKaUwwLlUaZsAPt0RVvuxPG5xIYLtbeH+tGMxqSMwCutZh3GidsUeMcHK+ZHnugxAcmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787975434; c=relaxed/simple;
	bh=mZq/po/yVuHuYYI+2mXLRYowrVYSevTfH179wiAZEdQ=;
	h=To:Subject:From:Message-Id:Date; b=dS+v7VJV2rrdk4DnU87QwrWeAsztkiZ5bCL7P6qseRAW1HKS8Em3lajRysVl1TY0BCygIepO9UMHJx2O1rLvUv8Lk3n9p7yVFYIsRtYeLbI51/ITeBvD1qpc9lYFybWyM5iPEbaM5GTSK+VPlDdc7g7yG3SMMHWSoy4192+6b8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0fZNX77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0fZNX77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD801C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787975433;
	bh=mZq/po/yVuHuYYI+2mXLRYowrVYSevTfH179wiAZEdQ=;
	h=To:Subject:From:Date:From;
	b=g0fZNX77CjqzuoXMtg53LRtWann2C9fxVksm3GfZZ+xj5yLw7Idg7G+TuRuDaEkda
	 JYB1FJhBHrdFzSU8oastgeBBGOlTYGmgilHRoL8jVaGS+NnBUzR0L5yTdetJ+JP8R3
	 LWIBt2oJuY8csvs/mWh5RjTJb+y6V9pi4A0lui+BK2Yv0X9Yzb1QF8Wq9aMyYXgPpE
	 5Rr1Y+BDY5vpfTjH5SRKv7pDbf4RR0rN4ifnshCDGwzh7CKURzCeOxwnmwdBr2pB7B
	 gv7lhUJ4NBY//on/QJundQpy85YuOaSDtc+w0bew9GkIDfHe3G8y33oMy4lYogVjZb
	 +tMPiJ0LfN/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D6BC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797543368.18458.4300846601690394633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f76314ecfd5eed5fad70a88994706909ef3187f25c948cf578d7ff1b5dec49
Date: Sat, 29 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787975433
