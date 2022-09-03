Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A671C2B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ECFC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662207653;
	bh=1QWMoks8gXeNiqCyWAgHLK6m3EeNumX4h4Y7tbnDpkc=;
	h=To:Subject:From:Date:From;
	b=FgypmKjUEVCaR9030Y27yzSCtnQCVe+sHs0MijDTfOYsoRBtb9G/iN9iRk5wb9a1F
	 /5DAg9yDQ9wxo1gAtCnUb9ZSfVeor+s9DPEX9IYjaOVjPOyaKY8WRZMeA+SOHTgAw0
	 riZdJgYUWAHm8TV5HpMkZ0tD2tweCVrq/82Y4d/MZyOnNVxvrv9PY0u3qVvpuKik5Q
	 7zbj8chNUTwI+NklYah9ecDrIWEubgQHqXz2QrehZP2ogFbYxcQjBG+vrKx7JUuMDD
	 NYn1ilelkl4t4l+CRhXcWVMzKQGy1Bov0QAo6uo5dNVFXv1CS9YgSLR05eGzrH0bUb
	 yCuGrLQDCsKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBA4C54EE9
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166220765331.24302.4631788338496742131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6402b78c66cf10cdb4bae4bd3e8cebfc5de9f58db4699b8aaadd3f5ce15519
Date: Sat, 03 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662207653
