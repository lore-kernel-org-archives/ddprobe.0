Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184281C5E01
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711342697; cv=none; b=eXbb7rVgniOXSd2Uk2jHvEGxUfJcnT/DPp9KeQaX/3dFX/VSCKUk/YUq5Cq8dGONwvIylj8n9MMxxsyFsIQVpM4vOW/ZEiGJlUflS2uAy4RNmmFwcARGAZR0nZZfMNkW9XwksbzXqCmG5URTc+swuqAkM3iV+0vS/moBtkkTP7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711342697; c=relaxed/simple;
	bh=ykoKKAh9MFfJ/sfUFtvERra1KCmK+KflfvxXEElpQiI=;
	h=To:Subject:From:Message-Id:Date; b=iOzXtUu01CbN4/VLSBL2vGk4TkUxZRXCY35blH3zpihTkodQWx8jW30UVmC60DYvj6IQ3vnFTnId5nsf7Wpn/z2URcPFH7TVh8A7Kkbt0wvLOz4/Xgi+h3PhB0Pf/cnIHiZNUa1nxxEUxcSa7vCgUzvK7vB1FKACc78byWgO7i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRYpgWwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRYpgWwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851F9C433F1
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711342696;
	bh=ykoKKAh9MFfJ/sfUFtvERra1KCmK+KflfvxXEElpQiI=;
	h=To:Subject:From:Date:From;
	b=iRYpgWwLA8kxprL4J5nybmi5JH48+9iUgXXcZqdEt/XJmBF2TBSKhGqgp46OLD+JH
	 I+OkGhkMkXtP/j962H2AXDL3KddoMpZVusNPgPM/9xWxF2/IZnszWrAEJZrjhCfRR/
	 ioA2lKnO1ZSdZXuogJFYvy1N9QhqMRDqDMzAfz8DqkuK/HWVy1Gw5t5lDKGDSju1Hd
	 aHdFJUF+A2kSZk8iE1tuyw3KEGsXDyX/Rq7430S+JIhW/zsgjE+M/svfIonp4TgJxM
	 amcoNMmHgBl9RK6J0bK2ICpIdfso2UAlnTtWM/yP5/ID0orwHPTq4VmzmFvzEke8bn
	 xPNaKnfWgLF8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63016C54E64
	for <ddprobe@lists.linux.dev>; Mon, 25 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171134269639.25279.2932512208600493294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c52464e9e963dfef116892b1402844a2b7d581675ef986d29d623151a2b3ce1
Date: Mon, 25 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711342696
