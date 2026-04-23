Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADBD329C40
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776932254; cv=none; b=EhrdXUX3Zoe4GAr3F4egkWUzqR78zf8mH9ymXo13pgiH5X9irb5GrVW5GzGKjKvkZ87JIsHUkdvi/13jSRG7FLKwN8ch3/qir86FpkTrS6XbDcLBytUeVelwIVML7Ts/D4zThlBzyeMHzoeiYKMIqlyH0WRIHadlpf4znzhZCgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776932254; c=relaxed/simple;
	bh=z3Ke1VzRIGqLVltpDs92Be/Uis2LpEoQvj7EioSasc8=;
	h=To:Subject:From:Message-Id:Date; b=FiUyYzzGqHjYKq/NGFqUv0YjF0JiRNjmU0DabUUg7TR/KwdYEZ3xk9F+a1eFy8zkd98Dne/d0tFp486hzqYWUC8zsgIgZYjMR2dG62C5tmkobct+AI+a2vcYH2OV/v+R1J7xkFyO/fBWjXcBghlKdquqeCzTmeM7suncnkXaXeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qk7v6ZfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qk7v6ZfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F10C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776932253;
	bh=z3Ke1VzRIGqLVltpDs92Be/Uis2LpEoQvj7EioSasc8=;
	h=To:Subject:From:Date:From;
	b=qk7v6ZfRMfzLVdR1K/nq7mwF2WtAWsByZwKgj75mNOmMImrHm9HJ7CBjVl4KPM2r9
	 9/J2Lq7Ea3T5McXpUqDQ2a6FGDLdPWp4Y7pAw17YhKw29wmzaS6J1tx5VLS4w8dK0R
	 Qpb3hQWI817UmkZ1fp/kR+PHg1VjnOxSgEkjoDEoDdaFxXqaxVNmjyNQ3HYSjjhkoN
	 h4nnhIBaSN5K8YnCUeqis73OLpDrwRwoWZEI4QoJW5qiMN7I5lQMqzcUTrbPml+yi9
	 fsdqCiy1O1EkUjQu+mwk+D4oVPIfhjoRKvf0bQwe/AGtUr0R0wwzpzc0YzZh2isuq2
	 cK7Th21om8bow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF10DF99351
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177693225370.11343.1962046794064128857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29358e2ffd209c79d52ab407d9bb1e667068586870f28cb1ad3417d927ae349d
Date: Thu, 23 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776932253
