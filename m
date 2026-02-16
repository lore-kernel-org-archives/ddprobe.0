Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00ED3145348
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771262094; cv=none; b=G+OJiverle0XqeXZ6Q+Ek2E1+PMKC5ynu2nPf19A/eiW9JM/DGVKyljJ5RCIf26kCJP+wpnO6wLImX1d7BJCzLoKkK1qnDOrezGvOaLVyBN8jnRuTyDyneVeVrd3l7fhww7QLM3zQDhCMn6SbST1AOosf984oNWaaII29QdV2L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771262094; c=relaxed/simple;
	bh=yKLwl9/k1zFYfZIFpqArHmQdLIrseWIwSDLuzzSadD4=;
	h=To:Subject:From:Message-Id:Date; b=BnsgQVGc5Y6X5iHVs+tGG+feW5U6tQ8dCgJAowSHN4B8wc3OeFFYJpeLLHdY38kKeDvJj0E310qIKCgh1iUKl0U1pA4Bc7Gk/BuRue8wzShQvgs5fC6h0kLPnlVwXYMWXlR3v2i3KI+fkY/qp7VQdw8Yvn9qOWXaxd+V/Yiunh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzIhs/Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzIhs/Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0154C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771262093;
	bh=yKLwl9/k1zFYfZIFpqArHmQdLIrseWIwSDLuzzSadD4=;
	h=To:Subject:From:Date:From;
	b=ZzIhs/XpAMyCafxXbPm3p7FfXs+lPMD/WmXBdD7DWm3rPkSmGTRDCCq3SLgrqBpwU
	 2LnzZptKFfBAEwtx9Jk94tQNPUOAj0niwDiXOnfl1h3E2zm9L16woNMB+xJhIeJ2Y0
	 7aUcZZnea3AH24Q32vSMyeU9JkkpdZjXoMOOIaEGWRk1nzlter+EOyzy/4867TAQbH
	 yQkXmjQn9UX9CnhskpXLJBmqybRjzyoUN+K/lyz+oawDJtwTqyN8E2R42iSzpRr/Yy
	 B/5h+Sb+A8Lp88NHheSR78N35WTgE1qQT+3BDE8YWAjknH98FzjUEM0yWoAnsnt2oJ
	 ONltV30tEnuqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968E5E81A5C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126209360.31393.15428767363162442953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dc7da9d14d207857e9ac468aa1bbc531502128661596cc89e6d244cda0a37d
Date: Mon, 16 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771262093
