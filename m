Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCFE4AEE2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754595594; cv=none; b=hFm6RxnozEJX0yvvXxJeP/vRpRn7s+wy3wpSpRpIzA5EAd5i2IIiMn9U8HUmbdIzDqqbxxFbaMvbS9nKFaVb4U1GX7S4ukqxClk4fbxL1/yxY2hQaL0WHXcDOhs8iL1ZGPFmA+lyWupXqTowY5GyVLQ6RLroT+2a7Z1XfBlgrWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754595594; c=relaxed/simple;
	bh=rz9Dgn4LUuiWzPoGDsCax5CaHfvW3aBU/3kYcH+uWfk=;
	h=To:Subject:From:Message-Id:Date; b=UB4rhPREpjaZHrG2yy8P+nPhF4FzN71MiP1JZHgtADYgd8Cp5ifE38ZK3YhbhZ/tm34xZTkTLVDdVy6z7C4e0O/8vxhitcxACBIf5Vtrb7mb5Xhf5umLEd7mlTKbpilZciSMRyCnAHkOh/j+6xOBfhiGHDPGjOhT7OJ1u46nnbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfQp6uUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfQp6uUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F162C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754595593;
	bh=rz9Dgn4LUuiWzPoGDsCax5CaHfvW3aBU/3kYcH+uWfk=;
	h=To:Subject:From:Date:From;
	b=LfQp6uUnhXvomscWcMNAtKsXpds97YuqRjQqKRpKqnSF2TyYMehipRWl1ul//ptI8
	 OKRMEQJv/aMh3qKpiyS8vyJrTW4O02SvBQrD6XLWL53CLgySRdfdCx3FOaiUHXz3yy
	 RIt+QCitXUa+HBmsdlPifI1yty5KEu0XONaASEqis40D+/5ZyvFJeuAHa0codd0zNK
	 g1UjLLpyjb8e4k/gwRHyrMcD+rDzXhGR1p/QIAgB7N8/Oq07sY7+wnjFvxRmFexFAk
	 V4C/XixN25McQAxhXDQgLdsfn+km8WdGoxtra71nUGkySqGMYzxWn+se8Tmr4sC6gP
	 QOOAeZbI6W/Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18AC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459559357.4062.4884296957508656795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702475e4928d22bd376d310bd47a28f0785eb05e0b47c1c8678daadac9e00e24
Date: Thu, 07 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754595593
