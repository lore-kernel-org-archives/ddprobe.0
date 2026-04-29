Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74FE3E5EC7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777467454; cv=none; b=nzBYbArLMLt3pQh4DX4mmUERJdXMAWuBQLGteHppj0fnHLbb2WYlOPTnMrsMrSB+kG7gz3twwUNQyd/+rw4vFnWaFqnfSAFL2UE+JVxMl+izzq7EZpl3dp16KPX5SLDHwNqta3tY83LrRhJOydijoTv+xSINfXXwTaQYFalGTCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777467454; c=relaxed/simple;
	bh=h6T+5poi69OUGIxUXfaMVBm+qjQ5QfksdYG6morZy78=;
	h=To:Subject:From:Message-Id:Date; b=O4FBHG+YqCpbrGgzBO9pLiC/xZq81FdgcFySz6d+z4YbIGCHE4GcpGcH9Wb6lOMvOox87Pn3MZxEu+RhgA0gUrtHhhZbp5O3yK+NfZlKwUGVwGwZLu+nwugkKBmk7dReiGO2IL6ElwK4vkrZTg5HNHvDQbwLlCLw9zndUFxXppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv0XMG4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv0XMG4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B6BC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777467453;
	bh=h6T+5poi69OUGIxUXfaMVBm+qjQ5QfksdYG6morZy78=;
	h=To:Subject:From:Date:From;
	b=Dv0XMG4CXBHdB6/67PNwjOmfkMkX0NZ0UilcWYBA8pUKWx+Qz5AK9srUlUXFcvDzq
	 Fn6kyf3WJigeVhKUn7Zy0angZlGIVPB3axZEfpACL4Lh2T2LMvejCvuYmzWzcFRlCy
	 Z0hj2SdhbxVoklF8G3Zxv4gdO3DL/TZpHn2eErtLzz7iDDjOK2RjIckEjwfly5f9/l
	 iJFniKoCVuVKzswnq0niWUuzSSkvGyHspta81H9fJgBg8N3ckIdvGoqE7DOvvf+5yJ
	 rcI3TCoED5TIYFAz4vdUQuMpnTx8QgzfYggtjRroqK3HXUcm1zVABK4Q7V8LeTBWud
	 CqihBYGLIjMCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98EAFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746745368.8864.3051678623933659385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e913817e59650ec2e5e5bc9c940446499fba770b451251223860072a7f568c18
Date: Wed, 29 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777467453
