Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5A32F6931
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774892694; cv=none; b=GJig0vqNzz9qUNjWWly2lFOdZ4RdRNsy5escaiqTe3SHx2u5ab+EoNL/8Xk4Uhq5RBwk8gut59nIir+/9pL8/YEDORQoHzJzX0QQjX9KE+YlOG40ObEdT41FEIil1Qj40tpNpMzKxlZr1DWn7B2fhG1/Z3+aDzY2GPkQTtLmg0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774892694; c=relaxed/simple;
	bh=+71x8d/nwGobPxp6eTJ32d9H2g72W+KfbVOri0klmSs=;
	h=To:Subject:From:Message-Id:Date; b=ZW9xqozjiDx9A2movb7Le+nd3BQ4zNShbwoNjwrAb41TRlFRdTgqEdqbES6Fqt+oJyjbZ4NIX+RSeFnoJahOBOU71NkdnWNProcvw3eyMeLoZlZyxrTGwgsq+nADVGUwiJ6Oo4pwE080OkAYmwVcGq5c8AQdwo9PbVXEZAmyW68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1sOjX2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1sOjX2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1B8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774892693;
	bh=+71x8d/nwGobPxp6eTJ32d9H2g72W+KfbVOri0klmSs=;
	h=To:Subject:From:Date:From;
	b=Z1sOjX2jWQlsTIFqhgzO6OmALau/p28E/aH3Y1KfZ+Ne48UfdEhLCWGCZxEwoGJur
	 Swpr/3Owm+RAtZe2CBfyQ6wh1S6m2QAqXaot1XGlYcbYI0NR9elYyLEqDOcvG519/a
	 LKCqypJkyUyfKScuVmeMGJ2bh9Eg3CVrfV7iAf3e3SBdL6PQX2k9hDUBodGW/YWfeY
	 pG/13DWu4gGRL1gz9fEnCZVfadwOQpa6zB3C3TRGrp/1vdqGwfniS9b90fnRdvnE5x
	 SkSEb+sazS2j5BogNI9n62NKhKzVWAne9t4yawOSuMl7/w7A8TTgTaRqNyx2afHmLk
	 4MIqbRHhuZMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EF11061B17
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489269360.8886.3507414520368628875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb65de5cb2a3a8a6b6266ca5877429fdcfc7bb23eb373d26112ee39d883b94e4
Date: Mon, 30 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774892693
