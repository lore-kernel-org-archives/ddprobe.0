Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6C326AC3
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711431496; cv=none; b=tizhKGVQUKP9/r+7Bdvbh+p+OZ01HdFcDi+Iw/kamYak7IVTBJPGlLkkdFV1Iob6o1YGp1GGyZKJGBfHDChok5j+C4wli7SeJmEi7IUHcrbBx95AcNVxR+M0/Jn8+p/agg92tSaMhaz7KH186KQLvhtwMHcXmvk13lgSnzlEqsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711431496; c=relaxed/simple;
	bh=J4X4tBOvbSmj8Tf1y1LXEWf+vcBGb/uHQl4cwAzfZoo=;
	h=To:Subject:From:Message-Id:Date; b=N2yqKYuGXG8UBxl5QqR4NsIdbZfAn+dXk5uB2TLchJnzm5+RnPLMlM0HS8CNTQY6PDr0qv+h8KVeH7Cul4AuQ8jt0fENB/6p2jZ2WL7vFHSVRR3ZMwsWs/I57PjKNSMplf2KrwqxxO3eYdTwo8n/gSkP1u7XcDhr8KMmADkfGPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8iyf66k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8iyf66k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F209C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711431496;
	bh=J4X4tBOvbSmj8Tf1y1LXEWf+vcBGb/uHQl4cwAzfZoo=;
	h=To:Subject:From:Date:From;
	b=p8iyf66kLpidclaqETeblMihH5FGzAL9DGqXfO6P3BFBn0iczU3wvLfbWeBTzwTOJ
	 Dp1IpjiuO/khLjcBJI2SO70pea4tsqxIzhkPZjpsmCiQ8mjUfZdpEUVAN061sHpO+7
	 HCXhPFsuoBm4sLDZ/74JKXvVT0fARaWarrNGRfA2vlt05JKPl7I/le+GzV69zWN7N4
	 oNdH7KduwhgFNq/IYYIHeSJ8SD3cN/k2ZPTEOj3krxmgPL8LznmrTM21HAxq/6C/qp
	 Dvs4DBU51xtLQ9HEMGnad7eCV3mwiNl9ejmLGUxEzPoQXtGrMfFnmN9pZB6odJtgQy
	 j0bC5LlJryyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7066EC54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171143149641.26487.4890170236518892234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26339d3d9a82a89f2a316272c4b44fe2682f4a178cff13756c06202ded9995c
Date: Tue, 26 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711431496
