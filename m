Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A1D204F73
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754035194; cv=none; b=qg3GqyYH+mGHufyfIr+lWcuLzqOc2ItiPSipE1198e/gtVQbj7+Qsvx2htGfISB51xJ8t50tCfdMeeY1r2JVztTQJmU0pS+qj6dZYWr/eQAr5mRRVjCu1Ebh7xH/mtmPvyMssUqvmtXLEALM2Iv7cCw97HM9agErZiRyV9pCaGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754035194; c=relaxed/simple;
	bh=7i5+wVHPGv+aMcHYxa+R45P2/teNplliM5Ithd9uhg4=;
	h=To:Subject:From:Message-Id:Date; b=LxMsp7JugH3MqFrrm/OTdKJCQJJtulyJdD+zSoCuJl/vMwQkPEBXXTohEWxiuxQFyCKhoGSur3kOki5kg9a2JKZ2iXsXUXqjGuCYGFYZG5UuX0DOXhLWfJ2961hKp12BrKqEvxdgcX1L3UPFg1nWHyLdHpSdxQkqwL9xiAWP7cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWT3mrB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWT3mrB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98EA6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754035193;
	bh=7i5+wVHPGv+aMcHYxa+R45P2/teNplliM5Ithd9uhg4=;
	h=To:Subject:From:Date:From;
	b=mWT3mrB5N/zIdRYYX3YxaMHhNOPDPlizMB4m3E7+rAcZVNk5ngaIHXyNHzaJfEHLK
	 UxyEkXG1wtmolh4XfuP0uOw0mySuumvOWppneGMX1XLFgTXVTd97XsOVn7vNsUaXqb
	 SS4gC2Qg0eYbDsLb2l89dbTO6ZRLj4MwTNq4dVjRvIVorlXt0EVE5BwDi43kWQal/W
	 i0Sp1KatlfSq2UrvvURE5L8xqXS3uVBl90ctcqwl2vAhu5wFGJGO7GQiS2UgZfBR0W
	 /Olz64sbFIfQI4+zP1DYg+qgoxUCS9ix39dbWKqS5gSuWorpU13LLRApMOe+IHD1Am
	 u/cxvYPEl/lkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A8C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403519357.23009.7671673626248942594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85520c0e688857623f594bc3bd4f379a39b3edfcf72083ea3fa1bbd41524475
Date: Fri, 01 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754035193
