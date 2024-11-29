Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B26719E806
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732887954; cv=none; b=kYzyOfCVW7tHDcfH6Me0FZZJBIzfqeLo7ngaPWgLKZ4DdFbNuJIRvOz2C9sdN/RscGYRH8sVUTUnaM2bNhfJlSbxlxwm1OPh7LiGvf9UdCelcwSl99aE7t0Lq6CM+356JCP0m0qHnxsNgJ3Ru/NtJkcn8+9Ihlvb/CyeZnWHn7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732887954; c=relaxed/simple;
	bh=hxEx/7SklVWlQobaPNH0enZ/PCMUWRBmcupd/PfmEdQ=;
	h=To:Subject:From:Message-Id:Date; b=YSukVWjVmol4mK0mDR2pf1PT5a3Tbu5E9J2hMxw6+YzMHv4B9rhlrCGyo3ce1CoPBPe4nwAkqD7cCPRGh/hl4XWOEGc1m5XGNv9RxZUFVkuXZeDLFyvmiLMzBH8Dvt9NOg5GwmXZtglwE2IA9RUmcJNAXzxa7hSgLQZbLtNoegQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/rrfp61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/rrfp61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A95C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732887953;
	bh=hxEx/7SklVWlQobaPNH0enZ/PCMUWRBmcupd/PfmEdQ=;
	h=To:Subject:From:Date:From;
	b=Y/rrfp61QPFolLiqLyHzorzNc4EIf+cRdPOLuCmebudpf9mW6UcAczKmqhUMrdsta
	 Pcw/FrBQhrozS2FV5LEIbG12lO/TACBhuyyYDoUPUP1doeXTBAeDD5Pf4zHnNkbOFr
	 iSOI22/1bwFvgRy48JbuiGEZHU5sOI8dPtFTHapGgpY7h43JSqtG7DlloDRiHdTssL
	 879EQQj63gRQ5jel9tFso7PjHGJOrhOiyokV7K7tuYznYBNlS9C8L7o9fOD6cpAE9Y
	 H/GwSGme0VE1nwwmTKy0p4TqZpuL/DqZdSx98+h34ouN8Jed92Bxga78h14CowJHgF
	 HCruBNrK+bTVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7045D6EC0B
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288795366.6031.11763394795413463643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7a0afc4d747682659dc8a0aab2ec34b931b52a1a72980a6d8951d6c3944ad0
Date: Fri, 29 Nov 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732887953
