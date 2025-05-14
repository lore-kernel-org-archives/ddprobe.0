Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9E94C7C
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747206594; cv=none; b=XwMCCKGmiXrN6Yqnbu8qZdpN2TFpFpVtARwsWdQoqoybxxPpR1x9+qAqgCA+n5/95L+anDuHA8Fbic+vwrARQgLJHO3SxlD1BdiPJYJaAs4oRxJPtvgYrS23OkTxTKYcol9mgxVsfGwIQZn9HjfsV/bwN1vDYK3Uhf1nglPKsTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747206594; c=relaxed/simple;
	bh=xDDLcnip5GUS2xmb7L2c96gMDzAVxwX7AguGOiBuexI=;
	h=To:Subject:From:Message-Id:Date; b=nJ91purwrdTPzmdWMrkXgf2lwJ1QfEhaU8F0CBNTdzNrokx8o2g03EYoWtYrQSbBmXZpaf6vQDsx/6JlTTfuSbt956c0ZLupKLgHFMCmQsLf/bjD5Tegek3pnLbA+N8hCnM5RM/kBd2PsPcS4iIYO6OYslyh8SIhOjX9TfJQ4A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5a5YD+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5a5YD+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C5C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747206593;
	bh=xDDLcnip5GUS2xmb7L2c96gMDzAVxwX7AguGOiBuexI=;
	h=To:Subject:From:Date:From;
	b=X5a5YD+hGmOjzc56TmAXBn4fmyFRjsUyvg6shJ3EEHvYMvtjAN6XquaeiDeVf11VA
	 x5SYSMKz18rVQcqnkzcVHLr4RjTH55Hpj8Yz3GJ0v+U0Cm3egEetgUon3Xd83zTc2K
	 zn1ewh9lvw1FlazqqhUz/jO8LFR20267ZQc513BDZ/twEL6pl9JWHshavUUP7BoR5w
	 PpR0z60jle0jkj4uIbRgRrwNiIt5qGoopzaI3xu/neXXmPXcKGksF3U/7nQnnXc7lD
	 9NjJjI3Pe42RKBijgcO2WuceSDIqSHO0mUdYVDkYAfi2jM//tmhSuhw/BcG3qg8kBi
	 0EG64UFBX4xeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB6C3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720659357.14137.18181920083795139427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dfc1108f54a35cbbd92d00f6ecd9ea13e1a28dd1405a0fce2d0cec8d7ed1899
Date: Wed, 14 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747206593
