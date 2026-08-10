Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E20C383325
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786381234; cv=none; b=QEbaixePOp33J5nyPXHbe7kgKL4cp70dMlietBzip+VjgChstnKYNPTnH2TDKPN4J0qzVl/hTgpRBe3ZlIUQ34uknCqIduy50ARBIlJxek9L2JhvUEETE1UwzE4erpbh6fD9LtHaACro0cXnVt0uL6BMtDWTFV8WIj/Km6ga4W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786381234; c=relaxed/simple;
	bh=6I+3IgJ0Tgf5oPRMRmgsiYqUOTc5V9EIvjiF8Dd+FMk=;
	h=To:Subject:From:Message-Id:Date; b=dlpi4Szq8acvq6AEGuiJLbB1Y6tuqhFoKaVXBGwm+ASkAOYAi8kuUmddDNaBPB5GZ4koqbg994oQGX229CL8iqtT1TcGYSGY4eYN5xPRAiu4SttCyUG1DnILGRMVqUNf1iVjg/IzZURKwx1UVwvsSWBvwiQxsX6OLDp5YTSRvuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YV4mgIJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YV4mgIJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA20CC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786381233;
	bh=6I+3IgJ0Tgf5oPRMRmgsiYqUOTc5V9EIvjiF8Dd+FMk=;
	h=To:Subject:From:Date:From;
	b=YV4mgIJTJtaAM1yPLHdTz4x1Ve4WfVbF4mcuoU2K8xxZWuN5bbU737yuxwpPLiKSv
	 jjsdJfjD+kYz1Rd22ByUJLSr3NW1ZOcgwsC2Eqplx6CKw8PzvGHYicHp4yQUbYwoRH
	 IEcFRyCoY/Hl/LYLWg50Cfre2oWXm+dmGCQ8GNBGdpbMqw+jMB9GDkkeYpAMr/6aPI
	 iPwLXUeVVh/ZWdycCP4U8foM/wON+IBdQYhZynsMPifW9LvK9Bn4giJPZeYA6pgjCo
	 6XzcWoIzd0qtGu/dWuQ0coP6DQffJXF1XqOY1Vth67g/krGuRwr65aUxIuhg0TQFtK
	 YMS03p8JRwIOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDF4C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638123377.27207.1164453167389831370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576e16eeb3c3ec42343675eb28e515caf43e3c570bdd8bca69e1ad6511f3b8cd
Date: Mon, 10 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786381233
