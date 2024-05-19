Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795D24D108
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716138743; cv=none; b=WXAS/tU/Qjw5yyZjDOTcxKJ1/liPtwg6opGXPooBNUEYi93euEObwgYyHtg6Eq6SIvyRwGdPqLtOG0UhGCDV3k+bXIfCA6DnqceO7waS0Xws9P/68oBtdyXG9DXV1fui7QM6UGvEsXK6k3eAMa9StfKJrwB++1sedENSjTqP7PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716138743; c=relaxed/simple;
	bh=YN6PFxuE7yZuvYwmVOG47KUxVZr3EfdFOHwdHmqmmio=;
	h=To:Subject:From:Message-Id:Date; b=Tw5AR35LE+sY3Lu5ujzkM8pVqeczqwkUbDGIr78va3ArSPVHxsqdIVOSVVLE6+lrtLPVZmZ7tuSPkze4YROBbdzLThP+RQquXC+c+uf2ENHrZrZ32q1IJxUju3WrL74yQzt3d3s0rVgCv0ZUOYomvg31r1Jxf7I3dcJnFi2YjfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv95r/mJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv95r/mJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC26FC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716138743;
	bh=YN6PFxuE7yZuvYwmVOG47KUxVZr3EfdFOHwdHmqmmio=;
	h=To:Subject:From:Date:From;
	b=Nv95r/mJm/Njzu2Fk1v24087am2c67P6KubRmpyvFE4W+kz+1BM69xLW65+kaVtZG
	 kNq03F37QQZHdMnk8F+nWm+Bo3a5FrpLqsi/sKNZ2uo9j7SHcOtEICHXm7IG7dgzhV
	 r+LsDbBvxvGMkBJSnC4A3AT/9Hs2F+01AjB2socf0X5I+UXyIvUwYvsgZJVY2Q4WVQ
	 rvWoiF/BMyQI6TrZB+FeW9q786UQWrlm9qAUNUYnVUYw/rZUTM0rj7pIZVKEe+uE6J
	 2MFnbUXR5++kTHXSagI/Uf1bquWvokgfQTX3w6WbC1N5ujbSoqyjrI65UsQpv5EaTU
	 IQWxhe9wk5BAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDC4C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171613874281.1503.13009465507175405007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387294443e6998cf4a5921570abad32bddc8fd15ef4f45186c65a3b6261bf0cb
Date: Sun, 19 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716138742
