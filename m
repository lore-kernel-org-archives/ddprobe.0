Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF2118DF9D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761312595; cv=none; b=f//NpYla5+d/GQkhI2e8OJl2wBKnef9komfrWnuUOY6IsMnu6ulgjVOTjbk46ov+BnxrOdJPPbRxCMgTdCWBDG7n1V4tPXP4BAGpZTP7QrEbe3XteukdA3Rx60mwdzfrhV4YRhdE1NLUsyTMDmWnxh/5EYA/GakiaewLGIudjVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761312595; c=relaxed/simple;
	bh=5jyCva1+wZ6at9bqp7eyQmNiAgoMGrWIta/6jaIaHgY=;
	h=To:Subject:From:Message-Id:Date; b=JfcQmhgDSQgKei8q3DRsB+DbIKZz9mkGRHVE7sMD6LpeEcJYXkD/RkMidbTLJXhSk58uj0Pt72H62Npv3hJO2v29sM6NfPaug9wCNGoMVv3rgd/rKyAp4jAuoGj2OimwPqpFWtO24A+SN7OV8xU52Rbaw0AZFb3xcHlHJdaO9mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxlAE9nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxlAE9nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761312593;
	bh=5jyCva1+wZ6at9bqp7eyQmNiAgoMGrWIta/6jaIaHgY=;
	h=To:Subject:From:Date:From;
	b=GxlAE9nzEXZi11EWrYozIIUnW33iSOa76qLi0b51B9covnwN2/uuhJ6JZus+6Z4z9
	 g8UVgK6FS9fnYs7uCpMqhbcPlmzIy2VuZYioB54/HA1fdpV++zwwFpXpfvQK5ZwpP6
	 HNYBX8PsuCqukarc1tDu2U3naSfowgs/FEgTcyvzjJ15SNuv03iBLXPZWaTFsKXBRR
	 lRLwzMIK4pTyI4mt4rG9tiksYCYZ4WrYc/FU8fsx2q1yhh3+0ALfscmcbVRzpQ5Ibq
	 eQn8KK986L9Zoy5f+kf3WNlLnX5HLQOp/rjSyjpf02z2Qu2gP09zZGHnCG43w0ZUGU
	 2XWph/PQtCuag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EACCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131259357.27710.15235320090511705077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c128749161c3b1b4f032ff1400dc92fa100994f416e0afd39935b595ce36dc1
Date: Fri, 24 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761312593
