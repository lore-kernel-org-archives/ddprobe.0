Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284DB1E0DE2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736271954; cv=none; b=je3OvF9J9My2UFc5Dkj0vt7hVYYzl5ue1zMWVXcFI1CzeS4yJBNAOsIDfLmMCI4DvzGmJnhzbY9oPuiylVKCBJdMLR8Sg34uUIGhTh+boT7Riqn67Ycl6mTfUmCEE+j+5waluNWFNG4z3so9Kpjpv4rs3CQbnSbYu6sGKiKucxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736271954; c=relaxed/simple;
	bh=7vbrmxoTBpgLUeVIdPWsx07kNp+YW2wr9u43XNee8uc=;
	h=To:Subject:From:Message-Id:Date; b=XaUqKrvyAWJdBIePHj/mf+KuPbOOGisDPJSPgTaJulSFNyOmJcU0susxmeDHkRLveX2DNC/rZ3ymvDuc+U0spdCvIF1KjGv5IIglOUd87UdU+EsiFAC/bofyyJpsTw4laLkCn6IutH859A5IZlo6euV6vIoWRr12pUxDFLmpdw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLnMYUQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLnMYUQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B5C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736271953;
	bh=7vbrmxoTBpgLUeVIdPWsx07kNp+YW2wr9u43XNee8uc=;
	h=To:Subject:From:Date:From;
	b=vLnMYUQlmdbgJ8OSv4J6vk5s8+nZSi8iQVKWetyq3vwCquFDqnon1WYH4lTPXwdC+
	 3+1Grb9bzjRnwwgxhSlcYCo/lHPSkME/p1YJ5FfPZ9LMTHdYFFeycI5CfBgDFfHKIY
	 73/RkIw5oNOlfXk3XoRq7b/uTaX9p7bCqv9BjBjTHH/jcghshTOzlaaDwOv7vuEsxe
	 6OVgG18xx8gC36oar6SOq6m63+sq8U3zOIhwq/MIwJkExH9PT0w2kzAT1ILCTM8BRi
	 EWwfvIW4SDxG7kze6UT5OqG5ROmrBvqEvSN4/vV5iLsiz0iaQTF+c2g0WSAwPmDJVJ
	 zDUOdkaYKpqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90256E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627195358.23795.17655565161317687675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20da42321d9a6240e401487339443bbb460710d50f35e076bfda77c670313e22
Date: Tue, 07 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736271953
