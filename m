Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D434B8DCE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785336634; cv=none; b=hUIhZzBa/HNSa/43aVEPbEnbNcgJi2Gel/vWYOx5YIGHvGE40c1QsuiG0Huu51WRmvCXbBxVUJOrKqQsgmyTL7b5BMYreaEF8zd0T2oTB6W7wlM0XH78zmj7kO9voBW3O6/ubrjSHuteeNjXwxR+AEmy4B6iDl41xAgIQw7MgB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785336634; c=relaxed/simple;
	bh=a0wkOJPlfvzqEBqTpzzuMG5raJMlmz17NfAqAy/MdPs=;
	h=To:Subject:From:Message-Id:Date; b=gJOm24cPRb+n3Y1a84xXF/QjIm/6OvssI4GnV2WvUMcqUwtcGOsWL09dpxhpdhVGt2MkY5xAaWVGi5LH5CAFxqEWBt+CDd7qcVlm7zcO3E3VUjWV4ys1dQm3tCPTm14ZOcf+480/XPbles/hB7rL5yK3IXi4UnwBTw4QSLB+e2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXO/h5B1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXO/h5B1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1734C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785336633;
	bh=a0wkOJPlfvzqEBqTpzzuMG5raJMlmz17NfAqAy/MdPs=;
	h=To:Subject:From:Date:From;
	b=MXO/h5B17ifCIs0avItvEihT5nFzrm2JljEEjis4WT1jkNiBPkfxWzv5zW3weMT9B
	 TUkq5PfpTZPdHWm56TTnEk1RhmRNB+jd0xx1UyfiwABRweRRl7wPOTn94R8UDE3BhK
	 6lTMBvUneXPWA44ZtnAxhwhl5edxF8/Uim7uJrHIsTcHBmCX0CiplW/w3+2BisldkW
	 6qIHtm7c3b3ha7zcNPqE3aiwM6bpjTLpe24QBL8Po8JV7DNnrtYs0Nw5WoFtR9V6sZ
	 oB60/iDW7NbkomOxNT2axNpaI9RJD2q3/q1peOajU2fEFPYxE29Q1PBzv+TZMqEuYA
	 9bjLmB+rWAgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA706C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533663369.29477.18224430047783701511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028693268dda84d416472ac4047ea853de3b97be8f9c20deab3d7eaacfc25744
Date: Wed, 29 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785336633
