Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7561DA4C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724424954; cv=none; b=GqNjOBjvdx/dRJq8ZtZfvdDEGvKlXJr9Ati6mCXFbIr3ZpvQCrhSCfmR+upKaoPKZ9bH96+LpTkyn00UJBMsPIsxHmZYkn8MRd1+jiAmg0o8YFWCze3siR6JkjWMWdwD29wSgyhZWHLEzFMU5mpd2ivG1VAJwv5KNSbf1swBdDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724424954; c=relaxed/simple;
	bh=7PrDRv4+1FGSxV+4Asx/LT8QLQhp5uyM0NA57HcWJxg=;
	h=To:Subject:From:Message-Id:Date; b=kIpYjmfCaQd8hdFWg9nuS38MOtQorKoz+EbUaxmoGkstZ3toQAIBT1RNepjDwZVvxzp1XR2/FdK44382hhYHSBPc3PDJGO3Lh4EmxJuGDjhLAe823Hzh2NuAleYzJODymkp3hWu/2a2O49kQyEYAmWshUbyYFvWXUT0DZxeU63c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czWwqBej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czWwqBej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1880C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724424953;
	bh=7PrDRv4+1FGSxV+4Asx/LT8QLQhp5uyM0NA57HcWJxg=;
	h=To:Subject:From:Date:From;
	b=czWwqBejcuHbH06EyrLgWh+qV2Ts/NB8r61UzWKGdmZ6X+h25Ecgs3XTuEf+3631n
	 CZv3/mOdMraWC3gvYULdCjnJw9n9eeOtdw9rY7GDWPYzwUn8wQN84evcyVezcP25A0
	 lpjiedvxo3+Uz29Lx8+HNzQs+aSz/CfNG9UwbhcOMZH+BGEdPDO+Ipjj0Ee1yT/U5y
	 aF7T775ayEvYTNXLhnT9CYkNlLpyt7LPU6RQssw+KityzR1BE048Vd4Du2jkgVYvJx
	 z7Ne3qH5tAT6ptNa2S8mxGpliQK5Ap9VxD969mxwR8MkrP3UCuAHl0rRFFicxU33fu
	 k1NJC/roL1E4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE39DC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442495365.2828.6320240614792842975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9b8b64b13c1d1c10759a8fd1e1db97243111fe8b766e6f5144a2ccc035dd17
Date: Fri, 23 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724424953
