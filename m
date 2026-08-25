Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A8C3EFD27
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787655634; cv=none; b=QRnfXqftYWjeOV1UqtrX9LIHxfl0Hk2d2H5Vnw76UbfcJ7v7mViosnuVhpBVHH0PrU53//fB2rXTebT/Qc0TziWHt4FkFnBDRZeMHa8sGKKdkpnWp2gBOCXPCE2faZ5K2RRe1YbCslYVyWe/adQy+GrMbE2KU8GILPre6b81Qi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787655634; c=relaxed/simple;
	bh=SpMBsLMpo+9X5y2dYCkTLmxbwlH8YL04R2Ism42tuEI=;
	h=To:Subject:From:Message-Id:Date; b=TKiQiX5B/EYULkOwgxkJ2M/B8QfMCnu8Cb97LBT7LcZexKDVLrrXJk5W9MoP+1oDtQ/iOCJxgyaOSOS2EKdEzVOfTOpSm/N4Z4nktRtMRNfEo6OoDTG96cv14WUZq2mGrCzlnXEdS7qNjgo2kEb4GyrWFYQySzCA9TzJ8+Xl+GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMfnTrkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMfnTrkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F56C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787655633;
	bh=SpMBsLMpo+9X5y2dYCkTLmxbwlH8YL04R2Ism42tuEI=;
	h=To:Subject:From:Date:From;
	b=bMfnTrkkTMxaFvspQqkaHi325kfCrP2ZmDuAgfpnchW0B0bQijD7gNUCYSfGtZtZO
	 ogDY64mhwIfBU/OV99Lwlw5LmtvX1o2uXblt6jyjG1MM91FsenItnhqhD+mQ+LhsmV
	 CIiFFDwdx70wmkpylQX254QxDTZYdlpYlKzwabd6GqbQ2etvtPgFsagZnBV8U5jzUu
	 FBz1r5Tngw4dNDItcZADfOi1PwHBAU8wBDG+n6Um0hjuYLrw4vZJfL/bI5MfmmMy1H
	 qZi986ypaioLDUMdYuEBjWfE1hcv9uunmJ2LbN9jTdMeTKhwe7NXX92AtRpmCcgTmc
	 cwmvO2syguF/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B9C61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765563369.3136.13670772102162236307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e98be2c2524ff52a59d81db34982878bd550b229fbb6cab18b24480409a59e
Date: Tue, 25 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787655633
