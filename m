Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC9963BF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF473C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674568985;
	bh=EeyCeqy8I5jKAf0LARNAVfxhdGPzeNAtPyIX4ic+WJs=;
	h=To:Subject:From:Date:From;
	b=rI2ABpxMjF9Pjlf0dtbdTh7ChWeaeDGeO0wTf+MNnGaTM6zfdstNE23YNsqi51k8R
	 b+RDNN0fo4qImzh7/ygyrKq+xH1lFn+VVwW7l5tjg5HLIPIZgoMC+BJHQPES8xhMRE
	 m5ATLBYG68/MM572f5abZ+vEBxK2sIWifPT9Ea02jBB4kSs5+KNjO5Ka1mt1Xbx7kr
	 Yf402TNkYP2P1Sl8vgBAFN04mdFw/+nNN9euYiHRj2XHcWJPxyW1S5WAutYP49ObrI
	 xG/XSt6BWyYFM3V8oiPP3+CRVHyv9GuAfNXOdjrkEmyGdLP/PRwAp0BT9wpPbHIHZ+
	 NSsQNySPdRGcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DCCC38142
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 14:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167456898572.11925.6731391783367555681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616a0347839768c52e296c8dc88ca43f65f3e8f8eaeecd24429ade00d4e0ee86
Date: Tue, 24 Jan 2023 14:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674568985
