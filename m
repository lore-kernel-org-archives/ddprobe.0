Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FF2272E63
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747424394; cv=none; b=LgBs6YKdts/iwbV+PzprSMlyEAewShGvddoshHGWV9XpzYndKAScuJK2+whgDnfuR/2DcOlNWJpH7SFwh7NYLVyU4SHQNPWON/Rm/7YS2D6o0HgC/p1th3SerPyDQWBDP2hzit/pId0JdKVzOrMrIIOfZNSKGl85koDlt4pX3No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747424394; c=relaxed/simple;
	bh=wWBRf99OjqdGODBvl/pMKlBIbZ2AszP+v6PqkTvkBLo=;
	h=To:Subject:From:Message-Id:Date; b=MPutowwWtB0OEtU/voGNwFsDX0p7gWybhCz6MQpHRv8Uj5I1chijN6ObH1PJYN3KnRGbaQ7eWtji8nuOCkVShfcK2r8tL26cGXc8mv8TK6x4Qck8cgs5Gey8GPlANu5pzLfDcpFWYxG3NzbAFCWvoO2MiEqnbYzqR/OGvv/gLhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpZwDq1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpZwDq1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A093FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747424393;
	bh=wWBRf99OjqdGODBvl/pMKlBIbZ2AszP+v6PqkTvkBLo=;
	h=To:Subject:From:Date:From;
	b=LpZwDq1R2o/BfbYk3eEeb8nk9GZ7LLChY0gCc4dJxQ3B4NXqdokkkPHufld6WsoQq
	 z29rh5LJjXyJUKlzaUxG6u4eZU3RQb3dtTTQ6VIDYTJU26TRtvic3fACqOSS+CcDnb
	 pR2fa0KfA2kQ3NKHlW+J50YKUED7vC4VDc3FNHmGqRpJ+6nfEolRXIQCv6h5K6yx+W
	 Qa4IWo4G41n0sr7XxC/J94ueTG/bMsmZlSdjXZhI7/hXy2NYPlecajTWoMXTirNgRh
	 sJSdiayvUNOEdkVP9DhCz8/XjGdbkO+TIkOEKqZWzHmYUcYuBiUwRU1QsmP9lL6SjH
	 6aREIh8T/s1UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6FC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742439357.6221.16532657396878774018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 261c632564090f96922564e2af675c3fce3ccfee6d78371c5a093d49b6669d2d
Date: Fri, 16 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747424393
