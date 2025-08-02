Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0071F09AD
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754144994; cv=none; b=oTio6/OFqHW3MDrQYHZOLMLBi/367LTNrZ1kkywXvFOJSunGkFjMJ4syoIkHV2CAVD23ZF3nZVLdXCACuFvkHr6ya0WmBPneCv07tU7o2zKGuSagZevK1SnnjQLs0iAxl29L8qVLK6Xgi3BjR2F6KYGioQfMXwvtOJoS/aHivO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754144994; c=relaxed/simple;
	bh=yVVd8fec6f/vrkaRy+u94hVrO/DUd4JAVynDDoQsT3I=;
	h=To:Subject:From:Message-Id:Date; b=LpsQiQc2FOXqCyP7oSujhlPgwQHH4V15+XwoROhLF06BbNIrr/OWPsK6Ui3ADT6SvR4gEgGf9JkJaeAVBUuvs3BP4ZatIqD5iGhbS9Qa5LPexL8cU+uC0lHD0DbkCFxsgbErXkAMPqRqFVTa/k3zGcfzJSj6cEzZQoy+WE+V1f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6V5HUWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6V5HUWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8902C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754144993;
	bh=yVVd8fec6f/vrkaRy+u94hVrO/DUd4JAVynDDoQsT3I=;
	h=To:Subject:From:Date:From;
	b=n6V5HUWNe7jaFT9GPsA75+nR9M+00I0zPVaRn+BFq6gxR7/LbzTsmvukGGHhbGzv4
	 KD7Jqqs4oUj4lyOjy1GpGaz+DyVzhCydhB3rHxMONsb6Co+ntLq71PGzASIX1QbuBU
	 TJbUnnBukFC5TGKFF39Fcl8uQljfMRAbU/hA5SGmURyOSp2jZ3erI2V5+EiryVpV/L
	 ERQeikhXGRdBJNaCnAYSYnzOSsRm367XdyFLrBlgurr+7a5999nGEzXEz7WBNBmJha
	 LGSzbjiqtYqXvIQmviKxi62I7vx+vVWk88PxPrXHTCjaYNJZvUzarLcHwjoV5+fZ7E
	 QKlRMTSI9NydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB8C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414499357.8153.2234541073797501426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62907ab8e6cdfee363c82d461173563c188ba89a7590ef74c7a33900a14a042d
Date: Sat, 02 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754144993
