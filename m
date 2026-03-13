Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185DF38F245
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773423894; cv=none; b=EyTy9oRfdw+9sphyA4LAmetXOgffiJYRi6vIl2r5DwnHe6+UjGQXHz+HJTZY3Cft5xmRSgdAV0cyJDJkaBfvlYHx/FlEh7p9rYk2+n4GSM2XbTCvZXZp5coIEn9UReQ3Cxnks+2o3UcV+AmYlH7bIZgP8I7LRip1Bv06ecIu3Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773423894; c=relaxed/simple;
	bh=rbUO6KRLU2zpRFTcf9zOoWhSLvS++pT3XiVPPiCknQs=;
	h=To:Subject:From:Message-Id:Date; b=l5BPOrREJ8PvkgAtlTZbDm3O8ztHt1DMk4Tm9HjLg2UqeOx80ywEOW4t3Cc+wdtLHmq8THYOw4xAgrFTUrtqftV4FAO8s5269kPzwJ3rOmGZWlSYCacLetvUWe5DwvRTu8LPIDPG53OxUJcZonDVbehP3WAHA7laQUUl6ERyBfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grQTA/IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grQTA/IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF9C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773423893;
	bh=rbUO6KRLU2zpRFTcf9zOoWhSLvS++pT3XiVPPiCknQs=;
	h=To:Subject:From:Date:From;
	b=grQTA/IQvC33hMooBryqjM5ASQ3YAeK9s0JR7RIl9d/3PkQULLYRC2FpHfJELGUpN
	 4g3h4mmRN9Z9VBQyXDhdaXOlqc+nNo0C8q6kh8b6xGX+2fw2TNMDBIYeUEbbekAnV8
	 ZTRFgowzbRZoM573+06VARuILjSl1Z8KTuKs+7GF72HenL/ph53U+vcl8PqmBT0u7x
	 Maxp6x/Yy1Ss5+QTUxans0l6RMzTTX8DbkLGOn7UblF/np0vwdnl0BdGZzg+Wl/ioe
	 hLlCLqxYGQOaxBAu1FRafOydA+lChB5c1/jUUMzw7LseqiSCjwYxxduRoXjlj/yPmk
	 ttrAmoRi14oSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FF107BCD0
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342389357.7650.1872801355873306674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ca3e89a5deeac040572ae730ec1cb56bab606ee883bda3d52250303a614cbb
Date: Fri, 13 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773423893
