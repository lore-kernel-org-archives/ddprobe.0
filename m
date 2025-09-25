Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91742EC0AC
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758796793; cv=none; b=rU1fLwcYTkbJ9OOMo7Gbx5++oJZyq2tquRZj/z2WWqT7vKEahEvWxvgoNHkxaFgQcaeQIo8hfqGIuZ7E/UtR4TZSNrUjfGk2We5CkgHLUMdnSwvrJ6EpNKr6yqcygoI3xcoyFipPpM4D75XmgB4Xi0o8r27nssmlhh4Mt2EH/GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758796793; c=relaxed/simple;
	bh=+tY4tzwih3n8wgTNk7fJJNEW5QcSXx72J8Ye9cFS4I4=;
	h=To:Subject:From:Message-Id:Date; b=p8P/94KQMH8EMdzZgZZM+4QDRTpsOq+9O2mm7E+Lj4/gjGrZ5hsyyjQ6rCYupIAZpTYL8azFgGZ59ud9FRoLaM2/WrqEulF91iBiLqyViSORx331Lx6e8g+J929KmlrZ9lj4/hN0yZ4RY3ScZ/M9zvKvrnI9p7Rz1tTxnCmN9Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyOphdii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyOphdii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E95C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758796793;
	bh=+tY4tzwih3n8wgTNk7fJJNEW5QcSXx72J8Ye9cFS4I4=;
	h=To:Subject:From:Date:From;
	b=iyOphdiia989mvkU45FzMoErRWmUpDWnbcDFRWXCoY6f1ouJE+VHjV5I5M62VBYtR
	 Tk+MceQ2/353amNHMHbFE7ox+o2iYHvUUDiwAKi0jWfPRLwoqwP5xpVikAKaVqpsrU
	 PcrzuabVqHuK3a96MzNewY1UL5IXd3zX7UVs2DCSZfCm2zk1XYU/iCoE2nYVteq2Mg
	 JBwVCF/T/+Ls9Kp0JJt3JggKsQGFHH58z1Si7M1aaqoOlERJCLdmPH9eQ8XXT7KJZp
	 JChORx/Byy8NtErtHBIs1ORCYjLPSKyLZHfcOcuwZT0bGFR7F773hNu21kVrcSaLGe
	 ocR1/WwgDv3jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A0ACAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175879679361.28600.11502431774372120689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2117b2d5dfcd44b860cd190f19509016798c05981c6cbd30800020f5bb7a016
Date: Thu, 25 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758796793
