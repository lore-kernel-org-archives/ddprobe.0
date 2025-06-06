Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D5C1FC0EA
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749250794; cv=none; b=Mv2kXzKiwLM/ftxSZjtzVCxHBWP7O0zQRL3HFhwknn/7XwOoZgUBUGflvECTAbz5c+x2Ue4W0JxLI1KPkOTVwcWIWj8QaLf4JAFSqg9BbM3SobZXBn4WV8YAhCXsrkTilCUpb7V/kW/I80ivqhieCvgnw6E5Ftolaf6V1dc/UbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749250794; c=relaxed/simple;
	bh=wbskfMbGqg0etR9ZHyG3ua0FdKbQ4d5tzDDu6IqKfKA=;
	h=To:Subject:From:Message-Id:Date; b=sbGHiLl3rZWPawSQgb7a7/9+QPhjP+eIeNisMZIK4X92euom2KI3Jxra0y+YVPPTU4fTUTWCyg2JcDwPIVYKk2ugcszh4s0GMVEwGbUW2s+KNo6KpGKWRVeopqEu8EVxPtASMjhYfMgEumTzh4WkRw55Q1rnR3NX3VoaDXdjr0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAkFginN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAkFginN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D5AC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749250793;
	bh=wbskfMbGqg0etR9ZHyG3ua0FdKbQ4d5tzDDu6IqKfKA=;
	h=To:Subject:From:Date:From;
	b=EAkFginNvZN6uW5HJ1Z/nk0R4Ncbsnz1TCWAu9fbG3ZrP5MQGDODcXVUG1SqFck+G
	 EUPodDpcvwo4zy3E5GCySBXBlBgtouQMPEQdOhorWxm3+PPZbmU/HHeXLDt+G+iAmW
	 4SjVDlsIzyyKWfSxvGwrhv2MA/BXFMaTPALW6NBcERkeECz7vhVIm+xy/fQgvDGCo0
	 7h4lPfQnYay5+quGiNM5u0okNKZ1Y1TNxAOGPP7qlcnDahlld3eV6RPmMVlmJ64EQf
	 tHGig6D5SNuqxieE+gE+Ru59u7ZCxeYjHCr7djdUerQECWS56ciquayrUCll7yn5/Z
	 O8nh+iLbWRWqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96383C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925079360.3175.9904108804283245736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed043d523c52c38fbabfbf90b21b9cd0b18169ff63ed5702b50d4a82f0067742
Date: Fri, 06 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749250793
