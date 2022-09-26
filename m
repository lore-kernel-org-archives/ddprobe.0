Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D26366
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D84C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664169653;
	bh=D8l1ZjznpxpIXZ3BxDAKzGgQCqrutkWEClWlkCgyT4Q=;
	h=To:Subject:From:Date:From;
	b=kTAUZOpBUSOJznCoTulOtPAUIK+fyhLSSHr7WN4AkziCDA5Hk+1kwMFSrY9xr9j79
	 DDoKoBl8G+6ndQ8aNn9LcUS6pWwyr0wLBV/pXk8R61tAhOPGyTdMiEvLBJSh36a46e
	 xG+etzZCgnn+TfsFPUGtws7KDNVLHnBuouFOFVFcSv5TpT9T3lr4DtQLl6X5LN5CIZ
	 2UsOEh+XaU1OC+ZJst1vj9vUmg2Vm2URpygbNN0rav7febUP4rijGiBFpatKgy+ift
	 gN49xOAHabeWp0vmGn05GromLw6KsHpovHy0n2MF11MUufpKwIsHc6ZrZl6l8ukyfN
	 P/6ypTgL1IQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CE1C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416965336.32376.18090896984940383277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ef4f8e20dc456923bf8762510f6faaa198e406688d9ecc7c174f806e91fcd0
Date: Mon, 26 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664169653
