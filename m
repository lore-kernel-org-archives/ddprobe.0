Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E753319852
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781336794; cv=none; b=nQwlSpgZOWAColeKqx9+J2BGWFne7olN8iZmLw4G84HARHsBMdsjBk6m4Cd+31UYaBYk6+n57JSz4u4zwVBUf7IFBGwnBi+RDQOL4IhLz9WYDAs4b1mp2YYcEsVpuamCHeVxlY9vE79Ip46F53H3V85gfftx1Y7AzgrPfGEQX9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781336794; c=relaxed/simple;
	bh=qgS4IbieFxl0JD/ccbw1oWE+VRUGFsPCrr3WENvJxqw=;
	h=To:Subject:From:Message-Id:Date; b=FF+bFU0avr6NOO0uSbRbme+rOs1/vp01rzJIc62WR9GrCzuD0TmNrKqgx6ZYDLXlHG/XvgxdaXKVvyB4qwWnEBIwgDlVN6hBxCdMjU1+cQSgu5MDbzerEw/spskxuojPHG0AyCMEFRAsG+Nz74PyoK75BzPjW9IBfdiHsSV3TlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfUzzf+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfUzzf+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27FAC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781336793;
	bh=qgS4IbieFxl0JD/ccbw1oWE+VRUGFsPCrr3WENvJxqw=;
	h=To:Subject:From:Date:From;
	b=LfUzzf+j20eoLkZmnOI3bemaDCxE8TNl4tsRxAktBpBkHwxjnQlMCa/D5L/q5Gvjg
	 ecE8UNeILB/cQc6kkzW0wunUY6Bdge/hNBkRZsZgEPEFhAw037xnR7JCvXQ+d8N677
	 /4CxaH73+qX1Bh9Uf+nClnGr9O5OJqJ5XUnOaibdrR3zbTD5SyBwmwloYBYj1ETPa3
	 xhmLs5kPelz+4Ai+nTsIVC5wTkCvUglaIImMzprRsHbdYmvKljft61OtLKNg+6IH/f
	 rXbnWNAITbYzZN2bL5+a1EA3sEkJ9fhVojcJGwfepsD4Jt3nsXLNflMumFHffKw6YW
	 XL212K59t55tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87DCCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133679368.29224.12512923528598933836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45615f237ff561122c663c692b9a5ed57900f4fcac51b79a3bd85ebcb07b1b3
Date: Sat, 13 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781336793
