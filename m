Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBE85D8F0
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722186354; cv=none; b=gFyv2YKVi4gT+pLfRXrI2Fin8b+755MZlMdVYUZ+wbqacYfowp7IA5qEqeE13huxToOyk2F8IsL+XHqBuY/wkA3xVEO8uo3qv7MQPwMRbZXv5Gz4yD3aaORrNMt7ZvpPlTe6u7uiAVE6QDsQL6uqHHIRphq4qixOPIEHUI1dIQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722186354; c=relaxed/simple;
	bh=ffrtxbz3Mj2HQsC6qkUmcH+n7xAM7TVnw/9mSYW8ERw=;
	h=To:Subject:From:Message-Id:Date; b=Zd5xEJWSyKqMn4bJIBuaDqiZlXchibccrtCa1Xqpa5L10Eml985vZnXspMJIQbsRNmwnM52yzGGh8EveEV1FqaoZi5imb2lDDUbgnghdNxEJX6fSFLyalaQInnm1KpFqebGzkLSV4cr8NnlzJh1sPHmK8LT79CTMvqtXIJq456c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1HQsBqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1HQsBqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CF2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722186353;
	bh=ffrtxbz3Mj2HQsC6qkUmcH+n7xAM7TVnw/9mSYW8ERw=;
	h=To:Subject:From:Date:From;
	b=o1HQsBqg98Qq31OSo+6WVgbh2Zay8v7DND2ijB7+9GKYLSNlOO3XRfZevl1ATPmQZ
	 oI59ZmtXBMbEDft7BRr9fDfMAKY227rJxsEOLz3dh/v7I/VOdjnhyoXyK2PrXd59vH
	 y77ObaeDi+j/R1JPwNMv2oZFOZ+yNbC6tnBKks86JRmKe1ZNLuVCCXMfNzrSHa0910
	 eTfCGrDDt7mQPNFfPKdBG9v2nERDhYfsMZnFcngF6jKSJH1J5vlH3ecOVcBSQV+a08
	 oq34r+2TvbRDQUwtU91PH+ynugQf0Woop6y7JJWWycfhEYwp3XkbsrQaBsXs2cSsXU
	 Qm3urQqEHsvTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6CC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218635357.30805.4598985810772856133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d253d78900ca3c0fde45f54a133cf8da468986383510e4accf011b64354567
Date: Sun, 28 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722186353
