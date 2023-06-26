Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5464515487
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C04C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687815788;
	bh=qMVUlL+Kp8v/D5+RT+0g2iekAV90VuwsXDP3EAJzvDs=;
	h=To:Subject:From:Date:From;
	b=ceMGMP0mdceWXC4qfc8pJBno8fGD5PjgJ3zJreoMW5VN4zxKUQzSHfUwLdXHDi6eN
	 rB4VodS99FugC52nxJYh/FmSratPTIfJAMam0H0qNlHdbtZW5IvXay2/kH35oF5DIm
	 lRvIT8U4EjzkP0m7O5rtska/TKeLC9antjnJNvx/dw3UNBSmbBvft5dAS0UWpGrs8/
	 C7fOCrgvNHzhuS5CqzIAp1GTZ7vv4ZXZ/GjYpSgyQ5UyT+FXTNQArGkMv9sIOsEnVg
	 sqonjkcl0ogB7gFQHpI5vkyUtwK2Efd34n0Xec1whasiuey9zw4pmzt9T5Z46q9Vto
	 vDf/dxBRczo4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47EBEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781578869.5258.4845472112251886846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30d702bc767ff7ba3496973e870f194a704804582330291fe25e79e3b1a937f
Date: Mon, 26 Jun 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687815788
