Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A2B18EB0
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740256734; cv=none; b=ltWZXqrbMuyUxMSi2LjVjtSLHezjekfkrCrQ/wsYfuqrZBU+k4TZh487ePuHJm8FhCgF8Fc/IxPOrgh6mKML8XYNr5dsmVR1MeACE09ln0ua0rtfi2YykBvReU9pUTythqOZvdtV0icvJ1WR+2wT6WyQ/KVuDAkAzcHfW7DnBCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740256734; c=relaxed/simple;
	bh=tnVK4C9S0B3oEIkNSyf3fTVcDHR3fkMw5Jn6stpg5KA=;
	h=To:Subject:From:Message-Id:Date; b=F+Obf/Ksd13hvlHPxi42RavWn3u+Kbw+Ix55vwmbKmbBbxdleMF0JUAeOKYJMuxr11g/hQwzwm08hkAYOxeL9u/2+s/ZURky40Ve+khBdG8k3GMrBuVlz9HrW4/gFX/cFzZrpSCuA2r6AHk2nDpNp5kDCu4PaUa2DSzpDZI2hmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiAsFw9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiAsFw9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB3C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740256733;
	bh=tnVK4C9S0B3oEIkNSyf3fTVcDHR3fkMw5Jn6stpg5KA=;
	h=To:Subject:From:Date:From;
	b=FiAsFw9QRvXGVcuhNzsNIz4ynG876PGSlMmaisCDD4PkH/vJDziIz5mOABo02G4mv
	 Sd9BMiWHjrT94nbPAsBSQUf1W5kU4k9pDigjM0hj+axVOuhV7Mq06wJtYchpF7Fx7V
	 czVh60Sz5Pzu3y0ks4Uvjm69fcomrB08z7qGH8O3GQEttRF1/c9k0CoFxnTIgoKkab
	 iAixmxp9H7mwDMTQnZQfQtEhlXpO0ar1J8VJWZa/5WtWAHxh4XJAdO9aMDK3ToLsjY
	 b0wD3uEpzUvTAV88n1OhH4SxttFkvzTrzS795ZYssFIA40tRfYjcc98Uc3wxO0YULC
	 pFrC2tDEl6SZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA6C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174025673357.2479.14184230450673654281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987052c85b2c0bea1663e114692331b293cb42ea17731097f69abd7284623b3f
Date: Sat, 22 Feb 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740256733
