Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6C02115
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N70+Q2FJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805CCC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697820496;
	bh=SNIkkbsdd9QtxsNTQffz1+3Y7ZUxkjwB0aMhKhVlOag=;
	h=To:Subject:From:Date:From;
	b=N70+Q2FJCY8c6gmft5vPFmWGAm/cc1BFs9uo45M5koZRcW3+/UZ1VoYIi7xTlrU6s
	 m4xIk+sjdMP9AymEWHc6d2cO/QHWeBiHOwTw7mUdv8RwN6zoJO7RhQ7P4dG6s3Qs4H
	 IM+EXYme7KpD7WBaq+HLBO/+tHk2VNByazKgF9pu4g9Dipn5KPcRtST0TNpy2jbKbB
	 PGECMJiZULV8GWvNqw/uKClOVPGA+xJy1JfBq+sUH0dHuONz6h6Icog7DHQ8gClgak
	 +mB2V2wCcrMUYrImG+g+VTaKfGWObFpCe1ga4YrGBPQRDq6laHpGNMv8guH27MHyfI
	 UrjoHx/RDCh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65645C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169782049640.14209.2044204112245742993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a00328b1680ceaf3f6697d8aa2f2070edda3cfe99119889a802a9c264af6af
Date: Fri, 20 Oct 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697820496
