Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2203C7E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 00:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 00:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674259925;
	bh=qGm2hmvEqGYEO9MINA2xl2itbpzTcigMQgce2jqNLSs=;
	h=To:Subject:From:Date:From;
	b=aXleUshSYMlLphaSKYLi0z3gp7hJJo9lZ6a/NQMD6ysqH7SrF5RxtPL4PEWnCSjuR
	 aPcAwyTB0CwiUPENzfd035eq0KW+c5bwycxI3kz9PEcYtwyUk4uhIkgzUbU7tnhjK5
	 y3ErQwynM20h3I2xTJ2H4niTm+kqNBqrc/JtHAaRl008bt17KwP9fJILTtenypZ78V
	 zTp++F0nMJstD5lna8RMOpkzj2EJDKiKW0HXUP+j40M0DyMLyCpfo9OtTMnKoK4WJA
	 JG4BNyag/qreGGO9jC7MBYQoA4B4cO2OsO9NZ00LtnFVSfYyph/4G5lXd0BJKV2HZt
	 QC5qZ2/6rkTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E6DC25B50
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 00:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425992573.16163.5662208668836345257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b371d40530c139c005cd6c61aaa969594754d4bfaf10a96224f8930c7a84863f
Date: Sat, 21 Jan 2023 00:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674259925
