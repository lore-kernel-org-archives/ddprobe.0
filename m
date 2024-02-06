Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A957319C
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707205097; cv=none; b=KIn6QgMAxf+m6ekkGkrNK9xMo/FBAW3iJGKgIUNzDRHLTBkQbsJbbc+C8ukyA0l9qMwOTovEX1DI1mSzN3sfToUN2pjTo4VlxgQcFGmtSiI7wHYklbQmcb6nVN3RJ0jgma7YspRERYSUOY9Z2pDRJ38Ml8SIAiw/w8bXHcR02MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707205097; c=relaxed/simple;
	bh=BFLGjLuUyHYYgOTyDf1kGQ+0QG8OZ6ntofEd5/M0DUQ=;
	h=To:Subject:From:Message-Id:Date; b=rHq/teEUEZWZxl7QY0AAdV+f51FsEGbR2db0adzKz5u9KvfArGJcYBS6kzYu8WpLOr4XZQGkx/y+BiwDBqONYdLHluKTmibBzbMlRoCtBS0IfMc0H4To80/TulutgUCAZeaPZ1AQzCJX2V0cZ/CIGC3FX9h9/XGiA/oqgfiCdDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iozpXWvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iozpXWvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F2E3C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707205096;
	bh=BFLGjLuUyHYYgOTyDf1kGQ+0QG8OZ6ntofEd5/M0DUQ=;
	h=To:Subject:From:Date:From;
	b=iozpXWvza2Bx9EK8t6GrUsOMRKPSiU+7hYVK93BFXHc+oOQBVdtd07pu2+B2dLkyy
	 uHYGr8ZAmizusLoD8xCH/HzTrEtcmKzeS7Cm77+YMrFA1QilyXevqYWSqlbOzJwRYo
	 DhnkDJwX1tmPgKtKO7eC591rV6VflyWWOFslbkipt3Z85Si5bM6pu/aMqt6lZrhNWQ
	 XFssJ05i+M7BnXHSooHCirLw3rvUk4MaeKByEDGg140e54vwyxJ+yEh8PaPIoThS4L
	 Kf4hz2kK0u3lBD7TL8fwHrj7OXKWcimR12IIVWql79vd2by+X8eewizN8A7DO7etGY
	 7GKa7qubmMhfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A939C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170720509641.27987.18409388742044404038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a2f062e700a680e54730442830623711da313726aa89f40bb4d9fcd0768636
Date: Tue, 06 Feb 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707205096
