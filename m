Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D6A1CAA79
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746113994; cv=none; b=VLUBGjhURj5oUtiLYsQcwucQynHFZWotjdUpbh+tSosTM/jEom3knXWqNbNqTr63nPmyMhUDebdPgaKJaHpW3q4TymikH3KI4zfBq0J06nf5oS86oS9KMYl5ep6VMBtHKjfJo7mljh13V8sDimhSVcw3y/m9ca85QuXGeEzm3jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746113994; c=relaxed/simple;
	bh=HDbAl23SNUEkDHhZjRPvaq5VSuE3FVb73ZqXSL9QpgE=;
	h=To:Subject:From:Message-Id:Date; b=j+QyBGc+Ea8R+OPDAB1mcZluv0dCsloMegZD1t6/Rtm6IGYx2Zo38mlLIuJrGnMBmKhooUbG7A8rpCfKF9TPMd/qdWWmCt7WUwMjYyQ56Ah0WDKTiFP1JwfeKlx+kddTI6LdgNEHlLx+cf0AsxDwqtLU0sEkkxNTCXNy94Q2yEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaY3YT0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaY3YT0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D38EC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746113993;
	bh=HDbAl23SNUEkDHhZjRPvaq5VSuE3FVb73ZqXSL9QpgE=;
	h=To:Subject:From:Date:From;
	b=SaY3YT0z+NbCmUTLqIvt2SQ4Tcth7w4KZ6BQj9nrpyQMM4w1VOuRnfC2xO+KOWY4s
	 biJoFn403h6WgzVZdivtLtUV6KL1mn+emT5EdUEqH/MIlwAcetb0x28gZA/7V8qIMJ
	 ZzRi9UOe5jxoJfe4QvP/eSJN5muvJB0c03Ns+HTVsHtRgyDhsZFHsFc2QbT7xrMQwQ
	 m+W2Lqdum/KJQosDkO2EVYzCpsIdaDM/F8w+s2tlK1gbix1Uyj7TbsGpY9KDdBINHE
	 QK/rRDf/me3numsnsiUfIfgYwjjb5Mar+Dk3k5yTKOO9LTEK/jlTszkrY+l4Re415Y
	 GXv5cC/v0miMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9ACC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611399357.407.17408276421516557316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1915ad5b120613ccf36d567af30802e12f2296d72facfd85bc7d7f6a74d0507
Date: Thu, 01 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746113993
