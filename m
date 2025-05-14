Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD81A4F2F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747234795; cv=none; b=uTnTlDbPusKlMXU7XJ7uImpACzTZuYOXcgDoUSqBhgYOeBLX+elVIaxGI+MlLByPE2dpZcwAKTDXaWBThoRQ7uEan1TBuxirJwJQG+atrdkOBg1FMm7GJfAi++d/JOJE7Cd9J2HtcMyk6wsJ7Lfb7SXRZsPpeEgX/TnNezt2tVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747234795; c=relaxed/simple;
	bh=/+45hvj3UaBBoFBMZvhs0WL3A4U7fgo2pbR/ICc4A/I=;
	h=To:Subject:From:Message-Id:Date; b=r17nyGh+HJnAb1uZYf1SJn+Jy9er6NUyYArohtl/UZvoVgCoG9/bA/Kn6FTG3eKsjKelTmP9EwjGb8Q5g9pEwR33+IajP4kcoDYrw02+YCDl46qf4IHSHDwsfCR4Io/6hFpMBw4vyFMMUnn66YsUxCJ2UH79zOnUNsdBa9+dOr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdNKqx5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdNKqx5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C40C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747234793;
	bh=/+45hvj3UaBBoFBMZvhs0WL3A4U7fgo2pbR/ICc4A/I=;
	h=To:Subject:From:Date:From;
	b=tdNKqx5uJZiRnrlFST7lVGTipb9Xcu89BGBrwqVEt8gcN1WveC5SAgNhLX87syk2Y
	 DAaJ64JQGskH+6t2MopwLFZEbRTSMi3V1GPzh7HCFqTcxkoPjBkP/JdjB0w2TdwaqR
	 mOVX+LixEABfD62NjYtZUwl2UVnzywfjYsfnV5FoIExJ0CkRXjwz0YTufEBcUODey+
	 H4HiLf+3kYcc0Its8TxsQ4muz3/2808wiUP42wpyWyob+6QcEWilKf6iXLqYeAoDFt
	 ZQIq3t5V+ePKLvZbu5W8Qm8W8Lq8sC/ispkwOfOgv0pEhTSqdC71RSPIgD5AE67zdc
	 K4QaPo7jaVCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E562C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723479357.24006.5141428988416838662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b056b7c21be9e8d2702cba4b0a77d6e3e561abec3bda4c32692dbf82f7bd9a
Date: Wed, 14 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747234793
