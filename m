Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF60224C9
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4xI4NlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72752C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702466896;
	bh=DnOYPxUsWfv8kw85ji6F9i1101YefGpWJToU2SjBjco=;
	h=To:Subject:From:Date:From;
	b=t4xI4NlBXpu4Ow0nkLXrj3dcUw8eLmRfgVEZw6jT0cU48CCFQotiXIqeVFWkwI6ur
	 mWxvO3t4K2I5danLoaKwtdg7o07mif8jFI1fD+CPBoTj31EI5BPuc+oeAVCAhZ96rv
	 aMI1rNUWwshVKvQTdN6OMq0hWXMGYeOkmYpI+ruCC+eyO9QW6IRvOAgKrJfTzP0aki
	 y1Y4Fd5OmNLl+hyJlKYeq61ScS65ZQIO58FBvVFoDDpd7d4nGXhhNLmt6G5L3GBn8K
	 pQVlN8ybRFt4Iv0hWOClHaE39Kl2+7Eu0wgV70Qys1ynDv0E+qF7Ih/A4G5da1lkUC
	 WpNQrISeUSHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF6CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170246689636.15628.2893763561367086407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95a53ab424fd05b71fe6b53c488140c27bb51fbd306274b7dff50b82a3b8295
Date: Wed, 13 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702466896
