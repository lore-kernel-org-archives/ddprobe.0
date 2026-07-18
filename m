Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6379143F0B5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784347114; cv=none; b=VUlrsZZwQWLvZf8awQk7zU7GPuG0nVPTRVnO82yEw/GHg+44QX/kpUyvAy4xWp3LA5WmcjpXOqwf+C+zf83ScJKJxy3h+YCk9t/BafWeQo2sMhZfan9850Mr+Pfrwr3/Y9i4icu1nr5f+FXt/LhaY4Xvm3Az8C6vfhsRp028Iv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784347114; c=relaxed/simple;
	bh=JjM3Y4wO7PO2Q6OMyFxhv6GgW3jlCmL3wnzqEZ9ZsL8=;
	h=To:Subject:From:Message-Id:Date; b=mrW8MO86DXWuM07IRGKievR5GZLssbhPkOHg2cCmqq16Cla95TS56t/7gsdiJZVM+7Ih9EiSusUWUaTByMhMnxBHkKjOug/47z1gIAgaAj8yMEoJUbbgNLmwFL6IJkZBY8w7EuCQ236Euz5m6ahupp6lwOEpEUl/HnPxM7o1pyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgFv+2HL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgFv+2HL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D020CC2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784347113;
	bh=JjM3Y4wO7PO2Q6OMyFxhv6GgW3jlCmL3wnzqEZ9ZsL8=;
	h=To:Subject:From:Date:From;
	b=AgFv+2HLkF0qlUgD3J+9AIpyDSLiukOk0hQGBjRgzKGQ7FxiMJzXJ8tBeT+3oC6ha
	 XvmhrDarh7TL0sk3QNsfBIvHwUwUPJjfjdBc95FTJEd2r2vrF076C6ks7pIRiBrFuo
	 CVn96pw8/niyVvxB6JQ+OKf9qesygkggmt5VJyWIfMeHriWcqmTGjuUUo3vg9wdpaU
	 P0WkYdnHjVnrAAZvfAKRwc09xA50SmH75pTNwKJd/mXEX4CGPJulYaf/Qcub1Tayv8
	 ok/l2xsmE6s+z0gbr/x/lM1fbYAQtBNEkzmkkPv5G0nBGQDJ5eSawyxVzTMDa6H4wK
	 GHZ5hLCueeZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B4C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434711368.15791.7668731015080863890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f887eb35b8cab1035f914af2bc9cecf2ffa48aa326ff74831ab52ada66426f4d
Date: Sat, 18 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784347113
