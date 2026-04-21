Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E29231832
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776770853; cv=none; b=Ghk4tqh5Vg4CQwSaDxuWI8GC3lmq4PwUpK9PJ+C/tSSe1AbHcWHcpayYRE+8c15DkbdtWXfVmnwcmhGAYd3xf8on5Tq1CokRhvJOiZlSyBy5MtIptVdKDZ3wB9gIBhOKopvCoK47XNecwyulLqohmIaMyb4lvwC/WRZmP2mQ53g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776770853; c=relaxed/simple;
	bh=pYkC3nfIgNMyn1Rebh1shfGy2Qq8c1WNdhd21BuNMH8=;
	h=To:Subject:From:Message-Id:Date; b=btKJASuy0cQIuB8Dpqbtpzl0PE/01WmIaNY/XGlXhPKqnp6e9HGxqS3c9fhE9SE3Pw0xqMIt/DdmrLzwAUklcldCWMli4kF/wI1Rys4Xm4Hi0XwOHuEzKRw5xFnk6SDg/5TdkTfy3S/TObFjr7HnEgagI/PEsguEKutTSjo7DeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g13opMz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g13opMz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6A8C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776770853;
	bh=pYkC3nfIgNMyn1Rebh1shfGy2Qq8c1WNdhd21BuNMH8=;
	h=To:Subject:From:Date:From;
	b=g13opMz4kY1x15W5RjlpUqJTErmaLTOk+Sj4nLlb+qb+Vy/aXH4OJqPYUyFldx6/n
	 wZusuIjWMQ+paL4mabW9RfJsRl5NTTCWFtOWhmadpZ7cH3d7yiwPV+7E7OJdYOEyW2
	 8uHREqEzsA3WBAUySbVGQTfh2AN0XT0vPmvmdTMP7DC7RsADYsur+Da/2OYY12+p/6
	 mckEPhIJsZ5U9iA+We9CDxovpVnsT5HhRGtXATVYpqoJE3IuL+P78gWvRxNM6cDBC3
	 ELIV8V+ps4YVAtRMESY7uIEhVV2+TH3e12AHUgppJZNJMMM8yPvJf4VQ6pOFoI02dG
	 L8pINpWjC6BFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D0DF8925F
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677085368.3314.5517677254385154562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3161efa17eecab1fca475b74b2bc933b79177a4bb5ba7ff20c38f57ee7a08a58
Date: Tue, 21 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776770853
