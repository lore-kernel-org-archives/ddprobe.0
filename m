Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EF62741AB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767222834; cv=none; b=V4cAuDBX3YMXjQqwq92FFsKg3mOftUPYcxEwAaKr4Q6AX172YerzogtVnvZY/zNfeuIkIe3+xTf4EihhawB1V/9EuDvbQKokm6XTzxnJD6C+SriLPb+xLRHeyO4JalefWD9I8/c6+yvLm0IwhrFv5aA6QGe2fcrJCOtqWoG+z3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767222834; c=relaxed/simple;
	bh=Tqb1NgxerT+5kPK2qz06cjodUCQUUmah8i2nWwNJF30=;
	h=To:Subject:From:Message-Id:Date; b=OqvAUDBf2G/DQwobvlvV3QHrk2bp3OIVGME6i/Ewhp+Ua5UCF4J1JRqkS9Hg3uuTcD3hhc3O5Qi68InDnb4gUHP/DRSJGw4gsOuKuqscqMPqFPwRD/VmK0q3AYeHIscffF3mgGrNNHx4PN9JRXYIgVO5hiTpCyG9iwBR6vSlkV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIZbl/zM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIZbl/zM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8095C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767222833;
	bh=Tqb1NgxerT+5kPK2qz06cjodUCQUUmah8i2nWwNJF30=;
	h=To:Subject:From:Date:From;
	b=OIZbl/zMeDbhx94qlaJR8georBHPqPN/klZYFAcjIMYMYMnQq+i3Giyk9QmKi/Uwj
	 7XEXnx9YCbLArATdjtA1U3tWgjxxlbAOl/Zf2TSBoSJN5ldQiD8jyOnfaslDqXpFTx
	 pop+FIrw2WcuAlQkvOZa2rxFIYIve2z5JponjlFTnSq6OWswX+BMghMWl7uNgo9TDX
	 pP0JpL0EJv5sKC9f+BQyqqBFHEfJAqGPIRoQvOkckcPF1XWbCre9myceKdpg4SkXSS
	 GKugFEV26n2J9KCxt1DzQ09gj2G1nsp1cOYK4O/Licww53SF/C48wQgia4mhPHa3hm
	 j7OxMY+joLwrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7AEE644A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722283358.27112.1606341871404659126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e848136f9f01e2bf397e1c5b2fd688f799ebeb77cc63a087586f94b65fe65a32
Date: Wed, 31 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767222833
