Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377E02222A3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748597394; cv=none; b=rry4IQh9AFfuE7GJX9rAWhgSxkhn0eqxiTZYHFv2UIDA5IcHWIZFO/iR8bzw1KwAwwJq0xMunVZBzi/DK/5GSZzdXGwjEpt7ebbfGvEvDaplvhR+qm9B+K2WzHW05X3jCUmmylLGK0t/tqdi2P7vwFxGvcHDhqQCntQV+8aHGrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748597394; c=relaxed/simple;
	bh=V2FiiYLVDXMt9afJS+kXG/ljCl4AnGYVAeC8Oh0QAgA=;
	h=To:Subject:From:Message-Id:Date; b=ezQIFCD9OZipBRln96fypMZiqk8AjEqMVP05l9pCFDM2Nh5ufd9eWfJJYUL9z8OQUSXvwQA7QVLT6m8ckK1vDeqpIxEfekL7PBjL8iSGFvcspA8dv890pSa34lFGx/mUnoHGqcbdfzCFvbth2MJN2aY+VFM5eo7nU2MYNrbP0Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQUB//FW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQUB//FW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE373C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748597393;
	bh=V2FiiYLVDXMt9afJS+kXG/ljCl4AnGYVAeC8Oh0QAgA=;
	h=To:Subject:From:Date:From;
	b=YQUB//FW0Y2SXPWUyejglrI5Zc91veNf7OHT8YkmpIp4tI3SxML0P5Sh+tOJmfuXi
	 sVUsJmXSzYzivqnNOg1WZ6CL7I4+FGKYCrJfEsjrIdtuTH71B2Gz6xvTkRmSyZ2Pwe
	 eoURZGjfttTB+dqDZV2y0qs6fAi+sx7GCMXt7M080xJDG4SNxMbELQRJe/TduhffXG
	 ObFSGZsTwl5xlgUjLnUh1Xaz1xFoxIPJD60RDh0lGdLGVh2s8fNrindfNghwmihJU7
	 HfwKlXmwPXju0KzRKWdcVfpIlebAaFYhSOwX+pOJKFADHU2qCU107PPJptfurBnawv
	 JM9/Xr4J11RTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95077C5B552
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859739360.6919.9119397750386777646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bb9d945692fa6c35b87592a1ff925ee67210498edf54491839f42bb78388d0
Date: Fri, 30 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748597393
