Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237353EBF08
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771735494; cv=none; b=oWcme5wRWvooqsiP6lLu+bDO0ctmOXlKmbEvlMuZNy/ZHT1A2Qp0jgIYNKewXTPaF/FstFDVtiHDzDwARccWRvTpxt6BP8cWKToG8MN5TJsjSpKnJ9e5S+Q5OWdkPTvspjpFI3xiy+BWxYdhdDkHDeFzoT4YAs8SRRo0ZR1I/3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771735494; c=relaxed/simple;
	bh=ocv0Dijyca6mX3BXUmALQWzixqo6q6GJ6v+fHpnO4Xc=;
	h=To:Subject:From:Message-Id:Date; b=lIz5nPjdqan6vgvg0eQi3gMPwpDpyb6xE5Q0k0bGCppAkP+NgrxdyxeEsKhI7ZN4Z6g8ifTnn8WecRfaIzwiIAWn3TOVtbfEKcHzI2/E+0oc6fInwz6lM2rYhotvQhtcE9+5HHu8VXKrqo2iDOJXblbpv3zuHebNYQolgOh7aQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkXeGW9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkXeGW9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DBBC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771735493;
	bh=ocv0Dijyca6mX3BXUmALQWzixqo6q6GJ6v+fHpnO4Xc=;
	h=To:Subject:From:Date:From;
	b=pkXeGW9FVPBIPviSDF7giXxIFsGHwQQbrsTwwYMHHJ4QfobO0GzSJFPrkDpPWp4a6
	 Y5UeKqfSi7hhVGpmZkgwtVmw1PuiQJOiSjOqc9YMGxr7Bkznjhe0ExcRKhpBp69Ib1
	 b2ndU1BiKQ+MsMfEYZiksOWoj6M8wxIVqoXhDgeJl4F8KzYyXpUpSyNuITVRLwwLKH
	 e7ubnJLLGFI0VwXjAgwPkaiCiEo6wYvIsvPLkv9X2hoAnzZUzpVxU+ft44fzrWFpwS
	 PLmGfSIs55JswziIhtHechIswWrPt/etHR9M2XzjQtJOL00Dhu0Ob4RjaNDxsUlbDN
	 Etxcdu6kltoNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179BC5DF74
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173549358.30871.16589077190241455888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754955b0193406afa349715e6e76f51d77bdba4223bc57a22f964dac1739792e
Date: Sun, 22 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771735493
