Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352608488
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732279554; cv=none; b=GIOScho87uLnBAc2DYO3RpufYWDTCiKp8Tedj5Siha4GJXYMlpua6yVbLs4ps4Z01loXIHV9SSQ39y2DtSld9e1lCEJwQ72oqDi1nfEsNXekAG7PHo9v0laggOI26JaR2afpCFwj8xYNDQs3nI1SOcs4HJRZxxn9FE68OT3OxZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732279554; c=relaxed/simple;
	bh=jPKO40worroZ+ETxAA1Tp1nGuF6Qu8keuBva2A8KX0Y=;
	h=To:Subject:From:Message-Id:Date; b=QmuP5S+k4sS9DOHyFLgzXut7cOWALY2G2CMtNxXWt5qqP1F5JNX2ssI17ZeHIYibL3pL0FoqQM2InW/rmdQkNps5igyYlEDW6gbdMbV+ehN01mGzxBCGUBOFpOOSJ6sDMCJ8GQ/6ttXIukjON+KxtBeEbU92xZQ9LdCERHCSEX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suaD0vFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suaD0vFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6961C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732279553;
	bh=jPKO40worroZ+ETxAA1Tp1nGuF6Qu8keuBva2A8KX0Y=;
	h=To:Subject:From:Date:From;
	b=suaD0vFe+T1h3NnBS3fMHDrcUI5vCzX+maYRj89ES23BsBBmEIU1uz6yXqBgXlp0W
	 np4CCNawyFuyALtgFGwNwborHewmozyEfHnqPYq0HWPzSO0G/49x4MPuq7xaBdMhBJ
	 KwPwp2vxXQ3gWeeYeFJz7JKnSO7ygHIJrCS3KoO4tX/Hw7GMqEskm+bfZyTQ8qeVUh
	 bsDai4CS+SfVo8FjM5WPuefqmGZ3ZtGFSFmScLnKSk2DFnvKlpYNHDIJXKAy9oeV1M
	 ttMYtND5X0OZZ5h5sLEEJAKPX88nOBX2ZEV4SN1PnvltqVvqm2vx0YY9g98nK1Z4Kv
	 qzdy9lMhghakg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C47D75E39
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173227955366.27286.16567868714259764539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25231532e9f3beaef28c3d30aea5128683bc70acd0a1bb15f17afb38533e999b
Date: Fri, 22 Nov 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732279553
