Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C68F280CFA
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758549594; cv=none; b=jJx4/VxJhuKs4rq7vt8sk+UdhuT6VhLiUAAHHibncAve+nONYoNhWLn5pShYn1/jbSgkgLuL5VFCPR8h5IahQyh98QqEccvyLJkHJriQKau+ODictunjBukZswiQN/tExLhMJQNhELMWzF4M/hsWqJ8mgHZ3iDGEHC9xWoLsssw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758549594; c=relaxed/simple;
	bh=sb5BLEMOsGZZrRqVukKeE/ENJcONmHOuIgCU5S+MxgE=;
	h=To:Subject:From:Message-Id:Date; b=ZqrCJjIa2MhgPlDIyy4JuQ5Xy2DL3+jx8xUpDbZMc6w8tmdPg8XwI9fHyHm3CPMFfSVT+gADcaCQ374gUM+rH3fBLwhVoXF4X/0aOk+j5tSEJyVuWYIGCUwRnMxjWjxMjI71FE47q7lJ4VZDSTh/zQbJqLltOFKLuD5razkIHcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwljAKLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwljAKLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0943C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758549593;
	bh=sb5BLEMOsGZZrRqVukKeE/ENJcONmHOuIgCU5S+MxgE=;
	h=To:Subject:From:Date:From;
	b=OwljAKLUdD+05o4lM5MPzQ8F4Wstwb9vAJjsrCWPdnFmrKIBMrDgokqA084kcGK6m
	 /C5x1HpqOHWLWkTOyYf5COD5Q2Ga36n11ZQfJK+cYBEt7Zt50GP534gZZyjOUN+TYV
	 RS2yC6rJQfl/4Fc3hFtbHmcxntTJxFkJ396bjv88EHMwUpd3mbxmbxlq1ZwMFHypJD
	 9b8S6gMeXub8oyfbCL8WygIA43CnG66a3g+lEm04fZiRDfnEoSGF38RhB+SQg0fOJp
	 4Q5PEVoN89fbm3T2iXKL8znEOLczYK7zaSJzowafDOqUdJmrZ6ufY+bpzQXsvcpdJe
	 j7v/IFdWpkRFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E9CAC5A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854959357.10695.9330730233346018339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dfcc499b7dfa629bbea39581971d119f9997d2d5dd36dc8708c9f401bf7d35
Date: Mon, 22 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758549593
