Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45998433BB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783448914; cv=none; b=i5+VFBNN58Do+R7BBOS4mdAAu+rhjnoYiGok/26ut9NjLWhEGVhyWFiOgwxAqNJ/EIdN9ysA73D4wRJK5GUuTbf2yMXz6wP5znK62vEVpQ/l0BH92LgtbWQQHWgYKveSKP2Efj7xy1iff1/Mm3H91MFsVXai4HvLjQVuCvlm7Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783448914; c=relaxed/simple;
	bh=cYEQ3/hlwn1E/sGtsUmjRrD0sjGOVlu0VsaMRqhwPe8=;
	h=To:Subject:From:Message-Id:Date; b=MMZqAT631FrUMBrGsqu6Lxy5LcGNfczOcdpv4zC0Gqfn8xORJ8Kd6PMZBeYxTd/km3J7T36CjOcBHRWlpBf1jOvrOmpf1j8I/wGADg192Xh9Wz8GGpuRWXGYupwVTePXaWjA8rU9uBkwJ+N2y1P4iUe8TxMw0t4S14YIJ5ubszo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjNRrdiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjNRrdiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF368C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783448913;
	bh=cYEQ3/hlwn1E/sGtsUmjRrD0sjGOVlu0VsaMRqhwPe8=;
	h=To:Subject:From:Date:From;
	b=ZjNRrdiL07G/uBv96MB1FxqbWl9bI3qP6aG0vu6CKNtmA0CZ7Ltpm32T4NGNiOa9b
	 S5MQEUdVc1IfHbXMBjculQFevww2Ht5kdvy55sfhRmjcPznxA3Mem9kJ1hOCGHwXld
	 zynB7rPGtI6puqE1SY8Go7ApdLvKTvSvdgMb+Zw0JF4AJim0KXaaLVvbD5vr2Ss32Q
	 BXaytwC9cEno6MMgGD7VZRKjB4kZO3NQli0ZeGwhm9XjUD3wQol8yUXxnvvP+lHX5r
	 V2bEfsPRE6YOSP5pv/yHmIVAC5G8DCyQxQ9QB2U3DP1Rycjh21w56WeB48+qIzi5I+
	 vynK3C7L6Gikg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD965C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344891368.19820.7365835963798471603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ad62c00d812394e77ba59e9ade68d15a60daed916fb620f11f2514ba1b764f
Date: Tue, 07 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783448913
