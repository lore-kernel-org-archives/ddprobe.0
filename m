Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85DA22259B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748873393; cv=none; b=UTIBHHJGQCDIrj/GYLnKDMzGr199CVQRUFNM/9i1p1AMAxmwkN3r98tTLDzqHD7zIAq1TIbltfgM1rPBTsoM6S1VKTDxGj+cboF7Z8Ga2xpTzBXv5Wl1uUstygFumvYjG2eDgdId4WOWEDwDbz0LZajUxAq5QdSNFzeBMDq3rmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748873393; c=relaxed/simple;
	bh=MZTj9TDrfbc5Mh/BxPRmWFIJAD3DgPfHfzfTl0Go9VE=;
	h=To:Subject:From:Message-Id:Date; b=RLGGSJarynjhUl7ksA1TIK9AqbT7k67SA9CoMvGguDJBEWOKmDYtOrS6Kck9g0r93eKkmjwSxl/nC5EftXL0tOPMAD/TdaHh+IwvpSnjf40gsenhb+HiX0OV+gbvNd2+7/c0FxayQ3KaV0dNNfv4xSs8nRS5LILKr8DAEcU0zNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3bZ85Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3bZ85Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC8C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748873393;
	bh=MZTj9TDrfbc5Mh/BxPRmWFIJAD3DgPfHfzfTl0Go9VE=;
	h=To:Subject:From:Date:From;
	b=B3bZ85Uwc1faEtJHGu9gqokabl6bXoRn2B40tbnXKDj6us6Ywk5jagHCyWnDXJSnl
	 qNZF30j+JEHMv8WJVzu+h6CXOkLKbRQgu9j/oGyFdXouffPSz68ioz93RAOBixvp1j
	 wPpGXtXK1M6yTTI8XGgC0LBibptzkdH07TfM23poJj2heHsUBpxJw4ZgNSQkUPzwD0
	 yKFfo0x7A0YXAY3UJYhQyvEfr+Jgz/L85v1dRoTA0EuhpHhp22Va7E2mIioaQn1OOw
	 vJR0Aw2KSFHWg+biVkZuoLAO/04dfj9Mtl5NrNVNbKiYaF+WRTQeR0A/chPF5ANQvd
	 sjThD9TO3eDcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87DC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887339358.11474.14632249079225891252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef15c294dc57982051020c1c22b1accff097747a77156281d1ee0c73c5525e23
Date: Mon, 02 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748873393
