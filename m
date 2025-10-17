Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17968332EC5
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760703594; cv=none; b=XqMKs1sPlmBI5S6wCsExwHYXw7MDi7QkQ6Kz2jZAIDtrydmzj49VCzDoaKavHkr1KVd7/2iJLu/1vDAiapOhKwZODa0ant8U6Q4Zwsf9aqgFtWCe6FKYIw8kXld8uXn+HOKRT8dxCHVFq6Ccr0d7GN9v+D8I/IaKyOEkXi5/ZkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760703594; c=relaxed/simple;
	bh=SUGbEFm1ZKavn5DMYL2OF6jyCiF737K2fqHk9ZDZlY4=;
	h=To:Subject:From:Message-Id:Date; b=H+xMhFAXgNhMbciAPrkvTOBKG0bHDgEbjX88F07vSO2prWX/XVfv6elu7CdpXlVOSACPFxPOdEIYrS4GmlXvCPKE13nBnZw2cxL8mpKQbcOlBqGJHK1I+Yvcew5cbnpjKHFI0xDSTokLMBm/cF1qZw6XcMdmoPtqKrAPTMWzFCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhoF0U+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhoF0U+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7FEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760703593;
	bh=SUGbEFm1ZKavn5DMYL2OF6jyCiF737K2fqHk9ZDZlY4=;
	h=To:Subject:From:Date:From;
	b=nhoF0U+QI+9ME3LzWdSh3avuY6H57pP5J8ALcmr+WQSgj1eB4s39h7NghzsguC1MM
	 bcwdOFn0McfF257Pp859Vw0+U2Hj0agWvk7TvXdanvBAE6h6bXRpASyhyZGpMKg3ND
	 wtbEga87oLEr+rbDTUcBI7sQhA7VvLyt0jP+aXszQz+lECr3lDq8wau236wlsOwsVu
	 eDDLt+UW6qVfdLNeFoJ+xbY63MgbYQyp61zdxTRG6hL1BtmtfJoSnwEBPB1i3LaKYR
	 dw5xMrRJAugtZmY7jEPoF1PwNnDcQnQKbQTIBZWTFIlg2UuLukpJnAs84C4vbGjZDk
	 WyQiPiYLIpDzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F204CCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070359357.2861.5800952879046042018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312798acce4d7d16584610633d477a7bce67bd16e68fa2a089d15ad33ebc7328
Date: Fri, 17 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760703593
