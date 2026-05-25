Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32193296BD2
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779728554; cv=none; b=fK8+j6q33ZXbtkc7iz4fTDT3Jg57iCkuCoDSVIqQtUtp4C4IHOj6Q5M3ptN/GIh6QGwUqcATlU/ntTbeScRDJT8jm2MatX7uA1gGw8sXX1ku9BFel9baXgpQnipYnmu3NX6Yj0Oi8zVJEdTXx6wzVrX1krKvYh45CSeokzyyyEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779728554; c=relaxed/simple;
	bh=qPWhbBA3+EY32M7hiN7Vf+QCEHwSMivVhe22Vv21r6Q=;
	h=To:Subject:From:Message-Id:Date; b=kWTmOZtir5RLcDQsdOViF/NnMYu4WDhtwh0dAGb5kTqRNjQ1irU64DvL5SO3X6gULxwWcCXHsVEV1X6pbXbNvTqlC4OeDDAfR+xa5rOBG9oFjUNacwuC2cgSdypq/OWL8lcFfk5BH5zEVc9vyET+H5JRLveNKGc1htYz/l4kqAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7FjEpqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7FjEpqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D19C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779728553;
	bh=qPWhbBA3+EY32M7hiN7Vf+QCEHwSMivVhe22Vv21r6Q=;
	h=To:Subject:From:Date:From;
	b=Q7FjEpqSNq4UIPGCQD2L/pshv/ejI+ia1WzyGiLiXlqbUXPwWrSJw9cFbk4XCJplu
	 DdAxuxYRikVm49+KL9fJYY/5X6Fr35bbp6SFZhfITDLbMIV2uxE3VXZaKb5pzkztC8
	 V0cxD97CwRIROB/4PtCkz3nLHCHxrTE8V3JCuO2OHDyR0u1NzYncIEStG5WDMrBQ++
	 XIO64QFcpmTINMniDNL/M7qOe5qO6ZLc8kFG0JFY4CDK8udFjgCg6da72Aw7UMrkFm
	 JvH6aOfmUTv7WtUL2duQQHSUlACB/VaoFwin922VuhwVXo3xB1h5Gvo//HaLbpce4C
	 NMY8LkEDuP02Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA8CCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972855369.32720.13053986877937853204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf185206ca07f694e724943a8b71aa42fe6a06cb0a5fadc5569218b6af66558
Date: Mon, 25 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779728553
