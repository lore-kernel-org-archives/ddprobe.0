Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D3E2FF143
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767681234; cv=none; b=gG1aBByOdOr2GalM8hM13tBZ/3SDD/JncCzxXX6CwyoxCJud3ZhnZqSybkoYN0XcI2jhj51Cg6IV8hS5YbA6M+M3MtxjObZVyUtrf1KQCf8BcAkIOfvuQFFyVNBLC+bqwi/ztYHlSXpDqVCzbspBEjdIW6S3zpIQk4CvUAElQnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767681234; c=relaxed/simple;
	bh=/O2pQU+sEpZ2A27R1FJOAcEPN5/juEXMiZ8qxeMfF6c=;
	h=To:Subject:From:Message-Id:Date; b=mSzqWtG7ql+FEy8tRwpTJGLTY5u95VKwDV1FC9/OnSoQfAFZtqfoLgCpygiJDZdtCOnzBRkLaJnYrasJ6JYHVN7izfViffbigttDcqeJc02D31DSPdliTMmddIQTSmhHGIqkSo0p5T+Jmd6J25DaOlVh9PpFTEhvg/BpBc39kuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcvzLP4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcvzLP4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31FDC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767681233;
	bh=/O2pQU+sEpZ2A27R1FJOAcEPN5/juEXMiZ8qxeMfF6c=;
	h=To:Subject:From:Date:From;
	b=FcvzLP4yypV+c8xKUH5tP0CjGw6Zhqp54cmiCDzpdCf6AMuMhDQx5zdILplONMlCM
	 WfJ+qC/XdP5rd6lscJ1CIHQuzVxjm9czQhDL8Dho3ueq+gbsPhXzZ7UzMw2A/OoKPf
	 JOfZKvQ8y+r+1R8HTZm7a0oWYD3jXkDMmL0+qwflTUqWFF0hndUijYK/s1yqlEgTHV
	 nNORvrCl3RzQIAzGlaPaD30Z4m/yUAr+5mBZW3MvbIstC16t9cuYRSYW/8LDkmxtEr
	 8jtVUjdEPzDVThYqzIbWqe0F65l5ueou49qjANLqDzeRWJZbFoB1jZMiH1aRBoNw+5
	 Ap/mBlKWrRvcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BFCD043F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768123358.20276.6941531703741632510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f0e6c24fdd200eac3baf25cbdbf5d01f1b28116b79e719b6a471e7ab1d4925
Date: Tue, 06 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767681233
