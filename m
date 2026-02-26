Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056BA284B29
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772075094; cv=none; b=ZUxPOLKvySKDb6VQX56kpEEy8x28BInVmuc7Fdhh5sQ5KLo302RdbJbdbmnB7Q8X+/4+EYrFMa28Y4/QxhRh1nQNGdpy6lF2s4WYZMDZ8SdnEt1fMowCcz63Hytw2zXas2+DQMJrVfqNg8GsRCVhkODVMLFQuQiRhUKdmbJeWdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772075094; c=relaxed/simple;
	bh=1L0wgqXiSD9kmTKu6HFHo2GUd0RIAztUKHSwDNErhRU=;
	h=To:Subject:From:Message-Id:Date; b=I6g4dfxLMW4qGrnhMpffkLa/avZazMRoWYRyJBmgmTPPX2gboOkBSdv7Wj8o2OT/MiqzsZmvyYIRzzcvZMDSNMw8zIAlEi/tuErLkpaoXD63c+PA0baZWdKxozV+434gELAVNU7srSJsIOG14lwXti5C6HQjx0Tpf4fFKeCFSf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeXV/RNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeXV/RNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8022C116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772075093;
	bh=1L0wgqXiSD9kmTKu6HFHo2GUd0RIAztUKHSwDNErhRU=;
	h=To:Subject:From:Date:From;
	b=oeXV/RNyhXOVcY8A34bWRa8y+qxQl6UGGb80ycjGkxK1SfM8tt5tuTi1rUKVKk6Ue
	 DBQwppVe27feH0pza9327KwcTIDc1Vmpeyns4HWqUfz/tNjr0cAIRzN03X7dJw1cOP
	 I9ijvo9sPuvPboMWC9MjY3beHy6GAVFMiLAsRocBpYlNa2Mv+luyBis9dBEn+T9bK2
	 3lSLlNAqkrPwKcZmiM6V2YTFH2WJV0xGhIrtFGULALfNOLEMmt7Ydz1LquTFwRs2d5
	 n78uuSYkM0vvWiQtvnhWaueCs9uMETSzTOX9jWhB8G1eb9CDHIMrCn/IrcpsIlp0bc
	 ZF/1Wdpzq7PBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D76FD460A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207509360.24587.5026487659256950349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0777dd8088add1d37c229cd832592ff801b537b2cd81c56cc7d0294d5203716
Date: Thu, 26 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772075093
