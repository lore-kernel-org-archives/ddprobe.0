Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE4828E7
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744528794; cv=none; b=GRvRmkbZoImz5CuC2D4RZq7YFZpiEQI3sJDuSl5Y++I59sa8QLb/t9R/5BzrUe2pwfRLcAR1/cPNXFrBSplg1erXMw/oZXT6W4w2056gknImqnt9DQw4/kfOlAwkg+xQb41sxte6DKh70RJhTkbbsL7scAD8tcKm8m8nIWtzYKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744528794; c=relaxed/simple;
	bh=BMLSWbN9OZmJ39nq+VsX9ABcWHsUkpiEwKD6rQnMWko=;
	h=To:Subject:From:Message-Id:Date; b=n2Xf7HTBt9kbXXjk7U/f2xXDsJ8iCHVxfFNQZnwNx6Xp+sKiBaeEcWZLIdaZY/29Wco0aMP1WbpvBbuja/TQKaFRW+56eRfknjns9NJl/88p5a1UwkLF3wVW/vjHJ4KUxSCG05+6kjEm74ECnXnXCdGQtpqzT1IxITYIpRX/fE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDUR4wXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDUR4wXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4D8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744528793;
	bh=BMLSWbN9OZmJ39nq+VsX9ABcWHsUkpiEwKD6rQnMWko=;
	h=To:Subject:From:Date:From;
	b=qDUR4wXNOKkdClouLaSme42SEqm14AevCJat3pqudRrw8fMvZ+QQYvxw9eENa7C1P
	 4UcTUgyrNzxMwDMNSifSzhOcSfu2n0gMB5BhjtSY/Jzc3dXf3XrTHN7mX97u8Hwf78
	 JvTusdZY/GAndYJi/l9zLzOg9xXkw9n9AlWElS8Hm6MVxCGDVvkHAG+LZDUwvlQxUd
	 3+BbfBnKg37DuCDtCpY2n5k6/x89am1zqi9pKenviV8JHlpYv7E4jVAQAdYI8c19Ln
	 oRq8/1QpHPqi1pLcVMPUX+zUaaLLqiGn37D76/MZFydYOpOTFMoS2aYP5VX4jL/ATX
	 GhKaC/CEQUX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B41C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174452879359.30222.16564389459365649757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd693c48b03b7c49eb0bf9ef3f84ea5821036dc8e4ecf8fa9aadd37636ba341a
Date: Sun, 13 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744528793
