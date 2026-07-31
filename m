Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25793489880
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785534034; cv=none; b=m5AhlYb/joiywsX3oQJXeO+c1KzFjXHjvb0mVuJZswCO23FwIVriTCy9v/dKI/qp9XtpYGTrNvuTRNbFw7CJFC0Qh/WjcIUGFk7hhtGi1YlVohp82NuFX6Eq0X9DzDo3b2YTPo7haoyzlaQfTwGbycGIl6FrG2fTRSai3UZMn2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785534034; c=relaxed/simple;
	bh=OADyPwBpF8ruOkO3TutAZMLDL76f4SvgiJWnsHJPgfo=;
	h=To:Subject:From:Message-Id:Date; b=BvB95U7L2bieuAGhAHNXng2Oj2QHUj7+jZ8+RoSmvAWXNy2ihed403DS3S2yKjPQhbtguG/gBk/AiUKlK23DaQIgHbzyJq/T7JOWyvN7QXkIiGK35XudrA7DPnEtnuxRw9bAsAyfvMHOWzgbSIE7W2TJMC+AyB+pV5UerFd1V40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AcTx+Mp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AcTx+Mp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB1AC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785534033;
	bh=OADyPwBpF8ruOkO3TutAZMLDL76f4SvgiJWnsHJPgfo=;
	h=To:Subject:From:Date:From;
	b=AcTx+Mp1fEK1dAIdcacc9bwW238L58Tyytc59Wh6sjD+uHLkDgBCLwYA+tcRuV5Vm
	 bB067mNkCirA+o3boSZ+u/DX1ZIHM5XcktPSDmtV1rMyIgMUpmEkiDIWK1G3pqixLM
	 rq1WV0aYWHYCKXHY+NhiSoHCoQwkwksbwCwqxJH3YN+Hrqx4s8IHsGVA/3uvM1C7FD
	 wJycdM01AwtNTsTClPaI7Gw1aeYbnwe+hrhPiwcA5I88Mwc4kIrkPpQqyPDb/mwIXq
	 fwUEF60tuTIlwArWTF6BIxwB4UlD2RZZFeZZCmPPTZvKSUduWEH7KcLg6OI5oH9OKR
	 /lpxiUjB7exZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85F1C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553403368.21680.2400573552807441221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7047a79862af7b8929f4cf2694db9915a671976d446bc99bbfc669ae2b2668d
Date: Fri, 31 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785534033
