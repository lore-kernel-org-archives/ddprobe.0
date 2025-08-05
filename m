Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F777258CF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754384394; cv=none; b=Z8xH+obFoDjoqJXsb1k+WEWkfBsCpkUS8vZoRUqr7IddLatmPGYXNgqXgBzUwSUXfKZH2+AdtGrbSb4S8+U5GfeFwFnAQd7u6icwgxzEEXflOhXLialQCuuel9BKPZ5CiEucf0ByM6Y95YBHpSHyAFtRVMnEMpy+plWOiVoR4Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754384394; c=relaxed/simple;
	bh=uUmhX9nO9wDzpwMLfdINGiT8h3DDe5gROG7kTABA4Mg=;
	h=To:Subject:From:Message-Id:Date; b=PJ2jMaAX0YBpLJDTh8qs51CThK95pECYWJORQIPmb+5N5Lre1Ed8TkB+OD6bqVfWVdIIJdcUd3xo+YY3bmthUjpibT2o3IPLEciujwFMCxfnIUYPWTXlm+9x6HheZg+sVmIdcNWaT04E8TlMQdHRQGjs3mU0R+5NnpXGPayukS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tntaFAlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tntaFAlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD4C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754384393;
	bh=uUmhX9nO9wDzpwMLfdINGiT8h3DDe5gROG7kTABA4Mg=;
	h=To:Subject:From:Date:From;
	b=tntaFAlCNeET807btkVenPol07IJ10bN69fLGOZbigRqxq2vuRqKI0G9VfLYqQIyk
	 L+uRuZ0dDp7Wr5uWJQ+IPkURYfIpkRXMq4FI3WiiAff4fN714QdMEfO6SKQfUnbzy9
	 mmp48drQkcAQq+Dgk3h4Qxau28+PoJTR6H7+pDw5SpboVt/2VNIDXvONRQVf4HSQud
	 Nf0F9IrRtTyXPjafbINnSi/s1+QujDqQXFG2D1u3xkbKJitVKGxLwCMFOPe8Wt5r2d
	 slDRioIUSpPW+hVPdwIOmTO+8LzQRej9IFfY4vFoc2syfCS+k816s/lvLnAIJDtxS1
	 ynVHmTLU0vSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9DC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438439358.6937.4786772847265718835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94d32b0e478cf4004f5710ef0e2bbf5b43c3784f3938239ddf8d4d9467c5ec4
Date: Tue, 05 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754384393
