Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402D9101F2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728234954; cv=none; b=oR076sBFqDtf72Ko04oN2KG+Eo9ZRcbng1d3Uo1dmAesw6XQ5Ckvt5B0NrkG1kHdkPe90pM8Y34Qpnvd5fqMmfMnXYVEYc15LpQb/BnzIEJAAonkwhm2Q7pZ0p1wzemEqfCRvFO4OC6ZSqXOHCx0LuzAfc2bqDJ02DhWIPZD7QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728234954; c=relaxed/simple;
	bh=2NNo1w1PQ+uWfNx5hGvv5Dz8TB1ZsC0d47MNqXd5gDk=;
	h=To:Subject:From:Message-Id:Date; b=i6pKc0X7DFhxPX1BHQAM+J3AN9f4kuWgS64vlpk0EDglhd1Xil57qol2/BE/rmQheA38dZ76m2Qjr1zcuYywm5NLbL+ewg0Uej4wOn7jUX5NIGUgUQezEswRxHZV4oYwPLi69Xo3DvPSMqaVGjZ7f6e9/y95zDChVdBPU0Z6R78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hr7taAV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hr7taAV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC93FC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728234953;
	bh=2NNo1w1PQ+uWfNx5hGvv5Dz8TB1ZsC0d47MNqXd5gDk=;
	h=To:Subject:From:Date:From;
	b=Hr7taAV2iIzckA1r0zoOEjH2hhfWgSFQJT2VD9H6gwQXtE1FVCjPMeAwS7djlGGN4
	 DB/4xKoLon9PRbRua5IEmPohULDW6zSrO+wVoO5qDavKKDYdFHG2l1bqM6NpDzEvOt
	 Du04L4NbDxZFL9aeNMAYPtuuFfQYRNUHbTqEZ4q6Fi/Dfpra91t9JibCjCnpwE52sE
	 LZZkFlGnPXHfnGgVniQxBTobKV8mX+DJ+DDmmLXUETdTOlX2gQBoqfL6DcKY3Gg11N
	 fKEzPWBkDPwsYD/NxIVoFHTMpbwJrGNCosBgcAtNroDR+xJo6EykfBJBAwFp3klfPC
	 DSJyC/Osj9EiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973D8CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823495358.32729.11769823822806982921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a796857e87d068ef108232e08ee1d2b6cae5069a179ac113b557c38f6dd4af
Date: Sun, 06 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728234953
