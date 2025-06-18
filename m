Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2B42980A1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750256394; cv=none; b=Wgr0a+FlRrvSoDHWeMSYr3fm+FHSudpL+WNLSvQr/BY0NlbVSYCYEFf8E94Xy7zvbolgyEbo7VOytT9moYUf4gknMnx/gRHlTJWwmbTry5xsFi1ZLOPatJ6CFj8Np2jqhZRABjWLJ7duxVOoMGbb/hVEOF5y05+zWca4MvUIHUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750256394; c=relaxed/simple;
	bh=Hg+YT1cRFMpIf5/ofCAg5Rui31+WBN2eTAIkOV7Jo0U=;
	h=To:Subject:From:Message-Id:Date; b=XKsONtJN9eow4Aq7vkoP8Eiu6+lhB1knSF4XjdzDW+oEpfn2uNu3PHRNLTHPztKJAFJTeU7kO1kuYMZE9zqHqJjPVEzGwkaDFnWqDQhBdaIR63MYoys/57QDpLbvmvMXwRqMOQFQ7dDlW1T6pV3wqvUyXaikcTfF5VL5iomSWSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DucLw9v4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DucLw9v4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3554C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750256393;
	bh=Hg+YT1cRFMpIf5/ofCAg5Rui31+WBN2eTAIkOV7Jo0U=;
	h=To:Subject:From:Date:From;
	b=DucLw9v4BeP+OoFcnpgASwKXc3Ejg/cLaSCcL4WfJDoKXw+a2SuXxX1z09gwiXo9J
	 4p+GGEq6HlQN3h/PnAPWLL8LIHlOJ6kIaQ16ZqNhue3nOlhAxCyRWbw046ZkTXXKGO
	 zvpvaEUDpQ6fLk40blSciMmcLOo60w3/QqeqyaNx/tZu0ExzEi/ZG6F9Iert+kjS0X
	 TMiirA4EH44OIBtNeoz5BAuNR1DLH0VQAHtbHFwIf/r8poZfBisjZazD6IVw+mU7Bo
	 Pb3R2Wyuac7kEXkL4WJgsh3rSUnWLXcaceuSsIQuNoLGQKrPEBBcpJcDugvbo8y0ER
	 b0/O19Oti88lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E32C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025639358.24651.17623471898029281921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91d030fa90507360ad9030664f1799675ebf3a16d61df9f278208b237c7df7e
Date: Wed, 18 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750256393
