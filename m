Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1673A221294
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762516794; cv=none; b=dVRfkaePMARC2VQMpdiwcbA1YmH1ybp2RKh+UZNhb5gACjD440Tp53QofQQf9QfcqxzQrLeBNj07qEqVsEo/j3vTk0OJ9EoxiCFVC2dFr/R9r7OJpXys2GJVa9gZcw0cqOEfMIRyJqesxFpyGrb02CstWVGyxFOgjKdxYL5jy10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762516794; c=relaxed/simple;
	bh=nfSOF5mVn2E7pjMoFgKe/5I7joT0jh/tUnAf0gbZlyM=;
	h=To:Subject:From:Message-Id:Date; b=MG5lSOPmbb0n9VlR0NRk+kYV97Dm7sB4IFyRrmnbX/+FmLigBpFqGaKbFvrDH8NuTQKxbZtbmQwzcde/QCF5LinysRzvCyoL533wnu4zgJikct0LlCqtxSs/yxzk2V8bA+eaS2ntxW/iNMPufqz73tpz/KiKhL1FAz0h4PAoOKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuY/4zf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuY/4zf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C56DC116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762516793;
	bh=nfSOF5mVn2E7pjMoFgKe/5I7joT0jh/tUnAf0gbZlyM=;
	h=To:Subject:From:Date:From;
	b=AuY/4zf23PYXlSP/MOu3KF7nQ1hTsxwp6ql7Z37KsA8x4EZngLE3fn4qlm+6v7PZw
	 1b1D0zD2j853JYxAIqGRx4v8Mb2GffeXY59KqZVxsPt1RUV1/RW6wj1bhiv6VMStM8
	 Fqn680FpUPYIjzUS66wpz6SoLeUrgRXwmQ3zEnqCr/Co4GbxGgcPjpM9e2KQlVJgA4
	 nM+e6anLc/kJNtLKwxM3IuT2e2jQXROqux1yHhZ/UlMQhZwqDWBdLlup49Iww63KKx
	 GMEKTc5pFMzyxtD+LiDqhltQaV+/LSaLNHnHoWeNEkeLAdX2SytIqY6KM4SrKyLDeB
	 4f5aGn3k0xhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90548CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251679358.7006.17543842415569696335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a01d2f54d27e75431170c7590e4b8726a8907714c6d023f650968754c42041
Date: Fri, 07 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762516793
