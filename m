Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A113D297
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730073354; cv=none; b=OTO0hPYdYQnA/3vXsMJjlbJj99y/rP1Ab+HeCco6CT8MF/GY70j/j9K5wIx4hbjxHkWwORNX1PW7obaS8BriPCsfACp8pKwdZtGQV2ZEd4WuPsufPyD7RNigG00j2vikt3P3RpmQEoYzcCynO0Ygobr3QAjUGso7iJqyb6RaQlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730073354; c=relaxed/simple;
	bh=9uIaWi/d586sSbn0xETZtbZ5rcmp9/Ul0WJU5oWW8Wc=;
	h=To:Subject:From:Message-Id:Date; b=Lk5U17d/xSxonL4m+9ePVZHz/WFxSmQuOkV6VeUm+YTDque6w3AwRZGSL5de8q8R7gUDSzn1O7jhAjVGFuYsuZO081FWtMkoHQaXoIsMY7aq9dx11HVxFBTCXrOLJ8eCciYewvqobM1qF1uXA3BczfFOPMo8Hh/glQsXipKo7P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLgAYJxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLgAYJxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D0DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730073353;
	bh=9uIaWi/d586sSbn0xETZtbZ5rcmp9/Ul0WJU5oWW8Wc=;
	h=To:Subject:From:Date:From;
	b=fLgAYJxlVmz/kcAJ3GxPLnBTsqXXWHS8hejD+cMeI3D/eJabR7BmjK5g9o9bq92xu
	 nOVmMxJNoDuwnosL+JpeYWoES5Pd/kZQ+wAcl4yMFtjznBBVfBPQSAYkFTsowgzZaf
	 IlWWrjKPy7v0Zjw5QNrgJlZxpbsel92vT/VDM8xCklS9GZICpakjcicJmHuXjAHJ1E
	 qSTUafu+C/dcYqmapo/GeU2VQXVnpRy+iJKMfOUYCqpAtEaXWsPlVkciVcntgSOCk9
	 OOFyecEnBdC/avxGFBC4Ag7Vg08RP9eJ5eQg7sdLlCMtaZMjIxK0c9CNAENnTyS54r
	 DmsDLJsGkdA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A2D1358D
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173007335360.9073.2686225378253856357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab400ff23b4589641cec58450b8555371f38061c0b34a1f399654536d12a8f3
Date: Sun, 27 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730073353
