Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35474502B1
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726817754; cv=none; b=R7FRu8rUH3gGINa6zcp6MJYDCAza1L2vuTI6w+lyOib/I2US6zvtgmEMX/NoLWmb4HECk8mO9N7sFwT335toLDWiWk9LeOYFFJzRmIsIJEHDSdXn9Vx8XUxQ4qVQlcgRIBE6XugB5M3rhnzvsQ4Zf9oTK492EYLCZuVKxNg+t7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726817754; c=relaxed/simple;
	bh=Bp3yIVwyCKRi7p1FP3CXywMpw4nyIPHio2+Q/aJEal8=;
	h=To:Subject:From:Message-Id:Date; b=uNvrkobY4HnIfCZGacgWAHIBVBaCKFzpL7kg2/BIYafUKL8M/04Ds/bFUhBVQb544rZvs5UpMUUuHk951QJO1AImU2/ONQWKCMWSHjm/wRhr/gVmiGzo7Jkyn+qLABlivISlEv+tnuo8c/u3LyTHbw7kvYG4xAGlAsuRWG7Q/v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8WUUHwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8WUUHwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3340C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726817753;
	bh=Bp3yIVwyCKRi7p1FP3CXywMpw4nyIPHio2+Q/aJEal8=;
	h=To:Subject:From:Date:From;
	b=p8WUUHwm874p3JuVKHIN/0Awqv4qz3MnLwtwwwE9HkobRXSEm2xN0rHzEDt/ti1ER
	 QF45kMSP8x4fMl2KGNoSctsduNwQYW5GAdNgZYD7WnTBtGWPt3tCpGz2+NbSmnSw+l
	 qQ4UqtjiQA9Z17mqf7sZwT0x1YWndyMpfZHs+2TqNyV/MYz+EUA0FEcsa1c/TMVtER
	 dqv67MDrtiRJu0eERIXoPsLGaD88N1WDRfsuTikU+UgbjnIeFlYKQyAPyFgyGqkGVH
	 1nq7pxcp6uGNjScrCt0S46AuKU5FQcxp5BImaL0j8KHhD55uwk4keOwbmFcrg2ZSWv
	 T8t6zBYliJY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2CECF58E5
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681775362.12322.3281630215469294242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd229340b92fd403b8c8fe07912945118351f3a052ba49556b83d618cb0ff542
Date: Fri, 20 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726817753
