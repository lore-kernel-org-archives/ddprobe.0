Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D436B30E824
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771274693; cv=none; b=eoF5gAd8DSuW6vrGH++NJqf6fO1Yy1iF07blCsUwPQeOUKvtwsP7A1aAPL8AaZfpRlvIoq/FYqvFzHv+NOOt20xXNcAKBIE1YNqBrYKMYKr3CTv1fbFKPriDIHcf8BsvtJTEmprId7gWwe2i/3d2GZeDMKiVQYgYvJQlQzmXb9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771274693; c=relaxed/simple;
	bh=KKNJGEPM236GQm+RZzcis8Q2Tcv1PlPNGkzgYw1+jvw=;
	h=To:Subject:From:Message-Id:Date; b=TUKnubpOprHf4cpHVV6QlKjSPoB4g+D+v12nchOD/7hEAQt+nP+axJJperzj/t12VaDtUEhtWYNosUAViDKcciWUDKColcDhUv1o1l0XM1NJaqwOMO89ivnrnHyGdifT+9DPKXOtdcUHUBDOsmPYIMO+dDGRbYp0Kuum+rTqYmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG5Ox0wM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG5Ox0wM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC8DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771274693;
	bh=KKNJGEPM236GQm+RZzcis8Q2Tcv1PlPNGkzgYw1+jvw=;
	h=To:Subject:From:Date:From;
	b=pG5Ox0wMfAwytotZdVMOgeZMCfOVFjsmoVS5vriLzWs7ZenVHwr91cCzG79yZVkUm
	 V3w13gMDxa7bee8Mu0g6MsQMG1WsLlRppmvEhiedn6t19TNo7Hv+Tayf57o66Bdokf
	 OoEBdHl1XDO9bFqiH9k9t8yZi9A9J72rqXPHyef+I0gNGnqtEHROjlqn/Az5G6Xn1E
	 YKgDfS3Dzq2BsH/V3cv6Hod38JhQjMAkQ+v1ND0CiK7dQD3RulHE7bItCJlgf3N+Vb
	 NIqD9ZWmGeGCcW4W94XpGrqko/yE549bAWXVGZ1s+ioJFCG9/TjAC1VyAu8MpOYtaP
	 9SDMOZrDTbVuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C0EE83833
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127469358.25140.18099717234191265270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7537e5310164336c74e54793fbaf42adca0962996fe80a49eec8f51e8d7c9fba
Date: Mon, 16 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771274693
