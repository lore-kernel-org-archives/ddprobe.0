Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4061148380C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787668834; cv=none; b=an1YWWMK9R4j8IRmYLt4NUCOqAftnfDIg99ejS7a9eDCnp/3vvGfX0teoDIGQvBkWg9J4dqEH+Lp1Lv6kwdjljE+b68f9YSIFnWiYVN4nOQ5PrxGvvKeTipRA0m7yMponhMnVVf/Clr3rQ1SwUxK4CxYS8Dar1hxoGMc5YCzkl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787668834; c=relaxed/simple;
	bh=AY9aaED0IQvg4JKstdaIv30gnHbRPPioX8hquKw2Nyk=;
	h=To:Subject:From:Message-Id:Date; b=EtbRvipIY+THI35Bb0LDPp9dNodGDqn/dZCKl1EWC00AjmWwU1r0mnT8jVi4grL2fIoiASjLGiT9e0Cy6IT6N6D3gqDX4uX9zlTJMPmaEqpKUfbg3J5vU3wHqaCKKl/+5r3NMPnPJaiJvW6X9WOmh/PTyUkmeFP7vrOuEC5ZBQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXOg61Ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXOg61Ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C52C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787668833;
	bh=AY9aaED0IQvg4JKstdaIv30gnHbRPPioX8hquKw2Nyk=;
	h=To:Subject:From:Date:From;
	b=RXOg61YeSyQ16gGY7yI40ZJ9bwvfn54Im3PcugbrFYK3gf0QdnWEGxH1bc3u4lDUZ
	 GSkeAFsM1RvBfCbNTAAmHx70VD5/4HkvWPQ/mo3PFF+Dj9wm9blig8Nr1+EOK9kq2A
	 HIWACWtWyaup55gHZxpzxaKdYUXyRr4kLD+AQzBAG/BXH35Bqy+dFtwA1PTdN7718b
	 Mrrxd+FK4BEnXhvwgjY0u1qoqkUXyhjnkDcOCM1ugfISWEwWyWQoSx75mivEsASJ99
	 2DbXSptOLBtQFm9QnKjIXgHYfoTyzJYCJXCyNY0YYdXne+lWGCHtx4K9iUsM0SbXSv
	 yu9fkzXLfTsgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA181C61DBE
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178766883368.10997.17472933116710630676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a169d387fa19110bb90aa05fc193e57788e2149fe71a3cd047a0fcf1bace32
Date: Tue, 25 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787668833
