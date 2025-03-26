Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470BF1527B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743011994; cv=none; b=TqOZ9FBN395DMDt9vNBSlWcmVJ6yXdIqoRPQDe4BVge8pTzT2PdNLnp3rk7jc+w3+kjS0o8Me5vDS5B2g4VooV8fsIGr6ZUrjQ50abZCXINdfrCmZ7AKJbIRXrDnD70Gy8yhIo//9l/s7jgKiLykX4vC018bVdjEzFN5ajjygIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743011994; c=relaxed/simple;
	bh=zIHH+uPiRB6SxFygkNeh47jBcj/349zbfTMeXXr3kU4=;
	h=To:Subject:From:Message-Id:Date; b=OXCVWPPXXVrlIcKCYnwxdpw7af4JYyKbAgWd9tIv+0c0f0h7xya8FBUxWk+lFRCqCSwU6Pfo9uf5Qm4WuSr/SCxko+wYK+bq3pEY5ykq0xNyZPs7QKLqNtPTAUBlpUB6JQhEWeSUANfnCMe4ZdBrkyjrsIz7HvF7NxFPyvlKH7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPVonOdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPVonOdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6CFC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743011993;
	bh=zIHH+uPiRB6SxFygkNeh47jBcj/349zbfTMeXXr3kU4=;
	h=To:Subject:From:Date:From;
	b=WPVonOdARb7eJ8ZJb0UE4x7kC9mbitbsSG7Jv5aPplQXs4IILuIiuLEV4T4+wizWB
	 3dEsVCLAsb9ctnJj6tHDEHm+aIgHmqN4yt8MVis6nbjg2g5P21KAfV+sTgCtUkROuu
	 nCbmdJi6USvmu0T1HOQd8laYjLnISRkhEIWbgb5mUawgfyXhg8WxxwS0P9YDnCqMzE
	 ZZM1VJn2wIHMkiXnftyXA//1mN0FjAlcihNYCG6NIHd93AZ041Wml1DTnqsc+SD6Cj
	 Vl7k9aPl8fC7uaSVGayAbyYqSZdo8+PpE35ty3LUUVmAGscxBYu99DM7VrEhb5dFC6
	 87TktUMDl6PqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C498C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301199362.6601.517509052953274917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b583da1ee59ae2e6f5592f1d29fd0dcbd151b669502ca2f18c9fee9535e90587
Date: Wed, 26 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743011993
