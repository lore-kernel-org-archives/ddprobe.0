Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1E81C3C14
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747423794; cv=none; b=BoshlKviz25yDz1GQypQp1LQbsVtz2a7CCdDY1hBVUJelhAxw9GASZK5RiFyXz29h9wt2RtZrOJG5sy8d+8SDoZRNK81zXZYac1sMVdEX17+KLPZTUnAo8LzojixoSFoAroYEYniEDQM9AMQGqUeC5d8AkavrdJJSIZIOEDpW/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747423794; c=relaxed/simple;
	bh=2Bub4wdR5GzX90sEEnDa9dP3UzA1nngAfwFuoEc/1pc=;
	h=To:Subject:From:Message-Id:Date; b=DfInB8Ehd5fI32914LW8HAMmpeeicEtlfW+NLlJhKbPGNIZLYfEcS2rwo3m3c/jkF2L4E+6Apq7/ToD0iht3Sjrn0Gi9pLwv+WRcs+8gT7ZJDJ+SgGDqpvYxK+vI2NOPsVPVhOg7PUKACIHV5pIiaZps2QIGqV30KWy+XR/wswY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdgDC2kQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdgDC2kQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27E7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747423793;
	bh=2Bub4wdR5GzX90sEEnDa9dP3UzA1nngAfwFuoEc/1pc=;
	h=To:Subject:From:Date:From;
	b=ZdgDC2kQLsnxxoNR1NAzt5wpy9rv9u3fhFeZ3SHlUFS9JoO+i+eQaIBTBa2W7lOkM
	 Iip8BRo5akUkXJG1gP/FOQ41BGQsBNCsZhtnqeMKIhwMLWhZlxEG4nd64akRiQON58
	 1SMnbC45rALWk2nfBogvUYhg5IjtpwNekyW/IlV4u4tiWsGabwXEmQrKVbIpteinhM
	 Qk+tnwfBMealrudC/Tn2R9jYNC2+qB4f+bFbvauTdZ4NBvSE9+tUSuFaFjFh+vXSvk
	 Tu/QbjdNZ5yr6c9mn43vV9UJ1GYzikZcXfmMAWjS6u9HWc15BfW3iusSzRfo+Vq2Il
	 4leDXdrhBDSKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED1C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742379358.10523.17580519683484802749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3170708a0173d9770a5d3a06c8623caf16d31c6c4d21d07994bd24421a4d38ea
Date: Fri, 16 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747423793
