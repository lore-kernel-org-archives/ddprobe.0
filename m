Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8033BFE40
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787340034; cv=none; b=KngVv9paq9WOGSrpJJlxxNVWwkLh7TDsYcM4uMYK3UgttJk8DoD0czaE0EvcBv52dDgzMqhMoMTorBqKzuJXWqa19yLWF/swnrN7NBkcuNIl8wO7ByuXZrB7zpmXMTRyD/sey+dTwqDQ8V1cJkU+jPFvAsijmez5ZeaO2nwghTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787340034; c=relaxed/simple;
	bh=kdqGJB19KyQ0yxCkh+tmJbAmvubhoS4TUxSJ+Jt8wCo=;
	h=To:Subject:From:Message-Id:Date; b=UaPtjdM6AFldWkj3aU2NTuMAkXzyKd095T6pdm/Gt54Yi+qmu27ZD0w7Ps7vP/P+W95UTeMhzbDUdmE7x2CIwEatTvuGseMYaIyR6+1YoBInVeR+Te00xs3+UiGwXqpxUZhxpHGH0yd6fxebVE+MW/akUMRAtEI69uZ3QpbIa8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG2UBMl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG2UBMl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DD5C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787340033;
	bh=kdqGJB19KyQ0yxCkh+tmJbAmvubhoS4TUxSJ+Jt8wCo=;
	h=To:Subject:From:Date:From;
	b=NG2UBMl7N6oe5GEfIi6YVFyjyWPT+pohRlrTDbYytT2VSFHjlcvuUQ1lRkj26fKWg
	 n6aisKhM8hp5vc5yv6MwabPKTy1Zgfjocye7HNHEpS+dzgeOcMYb/dViUfUT0f39aF
	 e7aiuE/BOMN0qNjrK5EmATmxCex3VEnmhvDVX5G4eMcDZaPEPcMbbB5mxXaRRCUWiG
	 XMdkNhG+PFBihfYxq/ZdvNXJ2UHVzmd6VxGcdTJGWEzbSJ5g5GwQ4xkQ3YNQ48Lh6u
	 krO51W3rKhi3L0QVojrrAU0h2lbFV9r/8MQ6B7CVEqnf6OpujOGSMWUOmZgkvRKDmy
	 ujYHhGTmfUnKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00EBC5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734003369.31662.6944435184832907560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea8223e3725c24795649dfcde5931cd090dcc5088d3c8d0db7f59d52034926d
Date: Fri, 21 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787340033
