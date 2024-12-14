Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DA919993D
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734215754; cv=none; b=GjAGmy+WM4eDMvzdDncvZc2zlvkINMXwn/QfQqvGZKqBBY3eWYc6BPIVO3IgQx3BxDEhWMwvBLMxuVkrkUunQe9BqmbwPsABQurW6/heSwfBUdSRlp0WfpFqcy7DCGgTAUcs4nZoKG+UUMhYYOj4GVWnzekmOoHu6g/k0ZMYF9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734215754; c=relaxed/simple;
	bh=tLp269l+nQaOexLWaKnAriNi0PJQNCMEnb1hK01YlHQ=;
	h=To:Subject:From:Message-Id:Date; b=FbDBcctQbbvC3uQA0ew+aCY3Hgxb7SNyHda5GWjI61bed8ViHJ+5U+0zhN34e3OSLwceBLZ0O6hVeDNDTpy1YBqffB8peqgJ+r5cC9vUGgW83Z5fwO1wrh0pr8H7Top58+ZS3Bp8+Jk9v8tQpkBnc7xMv/8W5RiGUC4vtBbt7ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UagvHqZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UagvHqZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCCCC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734215753;
	bh=tLp269l+nQaOexLWaKnAriNi0PJQNCMEnb1hK01YlHQ=;
	h=To:Subject:From:Date:From;
	b=UagvHqZcmJmj/8V04RSuluF1qAlYM4JHn3cdEASK2cwjCfQiK62SXzpW2g5tkJeIU
	 n/uGoi85IhhQ7oKwxJuQILDioR00aL5iwMEJxwTQKdjQm2w7Z6jbrBXYtMgYPu/Zyt
	 e3KSc4pjIHiWVEtAy4CdQtXbNJY0LVLH1Az+ZceQVP1FlC0pl42Y0hB9lgd7RDVkNe
	 PQak+y6BjM8+P0kS2KhGC9NHqW/7Ym7gsg+YtEH0c+bEF6TWmGle2iHQ193Fhuhl0S
	 d+Aid507koufsTIGT3HlFFDEi7FlJZF5BAMMaKBsVlewRbbXT2VgK8J+NCMwJvSD5R
	 r2L9h/u+q/8Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96653E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421575359.22044.13178927359526304256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad3fbd9403baa714650a2152a8dea91bcd6ea7db92ecc26687bac01023ecee8
Date: Sat, 14 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734215753
