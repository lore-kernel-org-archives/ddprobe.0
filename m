Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496992B2D7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769993634; cv=none; b=WWlmooc1ESmMKaQCpIiPEmt9pXnh668sUMYKnJJuqx3H6E+pAXlA4+gpUtCtvepbhPpCtc5TfSDp4qZ1eQ6wFYUf5C6mIgPmCPk6eLsIXOQzGizzllF+7XGozk+UTT3G3myxAPpHTTYfMDfrhRCyUMzZE3lArJDrWAWM2vkcT1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769993634; c=relaxed/simple;
	bh=1ZnmbzQxAmQjavHwEZSirM7P8M4QLcuff4Kcd+OTvQg=;
	h=To:Subject:From:Message-Id:Date; b=I/rYNkWhDtDRT+KGtpErbJpnzam0CNcoEg3OMU//8YeEdkso21Ae1F+lrMBc+6zZ8eOyy/jNMTXfa2DmzNiBMA0sqFdxNvPOM6VzGBDCfaNy4OeHg83tovw0teLZzjNfT86I5vcl/I04N5+Ad2DwjrNsVtn61brlqV9RmPCc2t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov4T0fMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov4T0fMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20CDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769993633;
	bh=1ZnmbzQxAmQjavHwEZSirM7P8M4QLcuff4Kcd+OTvQg=;
	h=To:Subject:From:Date:From;
	b=Ov4T0fMKqrfisOX39VV1S+gkbMiWASK0U8HjVOz7Jy5ESFxWqWUMJ3UYq/gLHNkEi
	 1fBOoinxSaOTOfo5T4vYeqSYTq3qxp7pwVvheraziRSUVWsVC/0et9zICLqDt1Cdb9
	 cxfPgWNf4zsj0jZOWk9t+Fyhipe3OZHHmD2l6JdBb1Ai1cByWDti7/lvW2oOWWB5zU
	 AWbeqUBe7zVY2fYMBbEuUtj1VXqG0PyIcZ6rjyxJD3fBM8ox4T8Cs5p5cWS4Tz9NMB
	 BfXF27h4MFjCdv1On8OHx4RwieQiawxq8pC3E8xyR3RmUd9AUlJ8EXUjo4RaeKEWNA
	 PqLMUfudnQTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BCBE65298
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999363359.31586.1247028440072492935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04aa98ca5c4c6536712827976a1032c072a18667e23492dbf4c300901bd1f0e
Date: Mon, 02 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769993633
