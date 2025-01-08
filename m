Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9D71A238C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736317554; cv=none; b=rpVhdU4vuCYPfg4NkjxyZToZtu+y/LZdmfYJD29MKti83HDap4W37oAwhqdmzOkYGvL9DBNZ81u8aRMsKczEsiNAiLVts1vYp1/S1KEYmH/Hn08M4yXJtYwkwAnpXO7+Hyd2tZpDp+rUmFkq8wuXWY9mS61EEc4BBaQTcCnQ+yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736317554; c=relaxed/simple;
	bh=O02ck3LaP1P4UEPi0LltzD1btvpS/Oyd5PXLPuEuK7I=;
	h=To:Subject:From:Message-Id:Date; b=Dab9iMzyaAH0mrxJsDEeuFuH9XfOQu4kHm9fyyCcZdPVoYvTnDoiY8tJvlNlSNBeDjioBokpUXQq1S+jnZBQwSC407d6QyJiR4Cu+fPGHAeBzYMsf8JuRp8mZWIHu+qVJhxdpAvAPNBPtPyTVxm4BjPOPewvAUbSeQJi0sHlbtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/21wMFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/21wMFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ED3C4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736317553;
	bh=O02ck3LaP1P4UEPi0LltzD1btvpS/Oyd5PXLPuEuK7I=;
	h=To:Subject:From:Date:From;
	b=A/21wMFKd7LTfdOseI3jFvfwf5qJHyhPnsqz+wVNoXOJkkTd70NJryhtNBXSMaW/3
	 cyJo0hYorVGOw9OVXsIwxnrQ6Xl1e4w71n1wYGD/HusD5uVnfgHzTaQqqFcAaagNfB
	 IVestRaYzNT7/AQV6JcxIkHzAFtoTXBucaS15X1aMkBlNJinUQQlG9H7FQMdNlzDjR
	 N48A2ajsfmR3FMK6EsEPKEf9IWBQbWpGiRtpEG6Tspwhks/P/hR4eLfiyzWe8TCQfr
	 m8Fuy9++S9NW99XHy2FWA6toq/dJG7a8r9Y26sfYAGlCtOMI2Vw1MWYsnahKqBLbKN
	 3mVJK+X9EvWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F02FE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173631755361.24352.3827851602995131663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7991250562beee64529f3f8b9d49321e4fc3d11293a64783d2a016895acc9812
Date: Wed, 08 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736317553
