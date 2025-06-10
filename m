Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0C525C6E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749521994; cv=none; b=lxMrpF5nbgxiurqQQgrTsL8KUgJX+jepmd0dzwVa/JXDqtMeR8F999jhZ+s8NMdKzCQfLMtnD6ompXy2MpJSLZiEJ3zEEXwLDXMlek+U4zhAK8voW5WHaU/jqmmU+IA4CPQuxaUFqnNniY6fHmxnHxO/TuZrtqdKlBOsIAipt+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749521994; c=relaxed/simple;
	bh=lJDRk7pTh7vOm37CG1vLSvizqa8ieouwsdhDWTwvNxI=;
	h=To:Subject:From:Message-Id:Date; b=i6tIiVsERFGcSzjT0ByMz5GAhoMPQZJVDXocjCr9MDuyXfHqO5QCnwJHy05qZ+keF55n21DREBGk9ZkmtiIaW3R/cuMFmjidx3Ix1Xe0DTqP3aBUHOi0Poi5lMMpOTL9Q9R5YnVRpRqi9t+oEtQ8g9lNTpnsssebzSFdICssRv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DevgTNIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DevgTNIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C5FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749521993;
	bh=lJDRk7pTh7vOm37CG1vLSvizqa8ieouwsdhDWTwvNxI=;
	h=To:Subject:From:Date:From;
	b=DevgTNILEpwNDg2iwnz+iXk39JySzpFLwTLRyvu2JaXsUa2MQ2eUP1XYHlDfH2bEG
	 DPb9akWj0ehDlvdhJ2TV8tKJbfYEr6noLjXen+2G4nMGRxNEKe6f3FWk7RrRtxOvCN
	 DdJca706q10ZpbR++S4m71ht0ZLZWJtoxhzlnhY7o2u5N9zf0KfX0p26SU3PnoWOgd
	 euViDvhZBdZrQn6JiJyZYdVMpgmXxoEdbVvcpA82mM9fIEJ3zfd4Vy2Y1Vw3o/ZlYZ
	 u+p7002pb9EggvDdHyZMzH6QsFGS/M5LMTFlgAMd6lLvIoj4Zg9vRA3M4T8MoMXONX
	 M1I8DZ2VPw69g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A10C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952199358.15238.15144175546582306109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db41859bfab2f321a515edf92a660dda55a10ac6bdef395138c248c822fb7bca
Date: Tue, 10 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749521993
