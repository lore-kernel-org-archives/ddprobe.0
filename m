Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C15A2853FD
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778908834; cv=none; b=JrCtXTdqtLCq4uAesC2HLmvN1PEwzDktxhinNEfdU/VTnaRIHZ/6V8SZXCSRsI2H5QIchyTkPkmvcPtJsjQf5lhFSJVaKu9pxNKUk6NqAJGYOUgbPrLexgnzNTF4dJfHfz6SKluQAFfEZKRopA1JmRrgkxZimWN66FyqQ2FBv/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778908834; c=relaxed/simple;
	bh=M5d1RuC5bA/Kq5dZpokkuhiFBjyPhsrFMN5ZIbfclKo=;
	h=To:Subject:From:Message-Id:Date; b=D4I+GzSjsXybzlp5Vt6kKj8BzX7KeP79c5TlJuWcY7fizgiJRaO36p6dPJf6yT4ywJl4AsXF6y6CKJGYce8E9uyJ/C25l9quCkLtH9ClHBF/fbE4sILvKttz27o+H+Cp9whZYFifqJ8ZzjyAp8o+Xken23IbpTtlhTxRg/q/LH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4+Tjr1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4+Tjr1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD7CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778908833;
	bh=M5d1RuC5bA/Kq5dZpokkuhiFBjyPhsrFMN5ZIbfclKo=;
	h=To:Subject:From:Date:From;
	b=M4+Tjr1vR/AKdBcaTwLBWrSwH9COBRxMCP6kXbzbtdu3/7GYJaBq9XxG3e7tG4u3+
	 GN1gW+1i21Gg/6kxuI9Yr5h+7NiSi6LCyOJMfTm51ag7y9axvSPgINE/MOdet9Pv5O
	 p4BMOobiXYFp18sJihMmGQcOtgFUp/P4sx5PBBVZapRAAcY094DjQPtrGlL6FLbik7
	 8JeoqOo9gjB5LwAOZZRM8MaMcDjOxFxXviGzrVwDqAnWiXMOmU2j1d/Mmi5u+iboOF
	 fUBqOjA0s9LJi+1uLftkYahHHy1XpDb6QavFog0FRCEBYmUpOQH5V44sKuyWS+Txzh
	 76IyJxG5m0E6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AB6CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890883372.26459.15262171491116068855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef81c362191fa211abd8c29b16cbfda29fad83ed6c827ad96a83e43c603a84f1
Date: Sat, 16 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778908833
