Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200D11DFDE
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731964554; cv=none; b=cpPilfbkxJ5MK/Vym0CX8dJeZNgU8iUE/u8+PKmIyPCVSKqMPRh8XTyqPuBOpR9FE78ydQ19dlDfU7O03Oihp0k2+fZRvDN77BL4+tZa2tD2hGoUt1JW4Fy5gyFYTtc9auqwyh4SNP5GiT6daFqkT5rErkAjGNgG0eCuSSiSw/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731964554; c=relaxed/simple;
	bh=i1oxvr9S67ux0hiiGetH4Og9P20u0fiNZSwpftxgn6w=;
	h=To:Subject:From:Message-Id:Date; b=btp+PdMwlDz2p3llZnsBWj6YvgLiRQrNk5UydsSxKN8NusuAU5CVk+bMdgqvsjEcRW/2MwGa5fW3LMvvkme3ZAqy0UwHzIg6n/a3pdpFgyWzt426OMkpzRfy05Y43/D1MHHWrFYNNYJoLYiaBlGxXmGCoQ1Kild97YNQvBqr3EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fz+fmv7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fz+fmv7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77F2C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731964553;
	bh=i1oxvr9S67ux0hiiGetH4Og9P20u0fiNZSwpftxgn6w=;
	h=To:Subject:From:Date:From;
	b=Fz+fmv7Dh6zMPCrAYDs4NJVNb71dw5tcdPgLAlhQqZfuwOExcEFzyXIWARShs4yZw
	 p1enbFSwHTBcR+wgQ25MFFluqYnB+eIKxYUnxS1G6cHS1xWAEufR9Lx9RX+YO0ty3I
	 XIbyB/WwQFznbE/RjCEoQo3drmDOJdtGQe/kOLW3ZLX4DdyEAECh5fp6NcLp8I9QJ3
	 reHwhe+ObXELR9qXKCQvcFxSfFF7zuBSFMX277keOO/C9ulDyyRinCaCOyHblemCg8
	 RfZhdKo3fitF5UgRDLN1GN9YlnhKlZN4MFtcRJqRfJMYRqZ2suze1+vMg1O1Z8qK+e
	 4dhJ++um8YFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966EBD591BA
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173196455360.20802.545059107666851238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c760590504b66617cd0a5e431e422f36ee0c170ab9d5548f55da0715115a7f
Date: Mon, 18 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731964553
