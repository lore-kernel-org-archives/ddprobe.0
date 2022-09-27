Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B378D80C
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD67C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664286053;
	bh=vRJKrJ3Mlivnep6KXQtaomvTaaf1NhMQxfN07ZygI6E=;
	h=To:Subject:From:Date:From;
	b=mVzjl8zgBvR8YbCo16RtfJfwtVhK2RIWMiPyFvfGoQt07jn6YIkj+YfYcxuUkFRjb
	 qwyJ885ugt4GlFcvrWDQTTCozlBg0KQzZfYtarePbJ0u/2hkCslO1a4LMgQm1ne2/1
	 uEh9f3hDsSvC9fqIKkvZh0booM9SiT7dQjAeYIr7qxkdFzEt+k4hMZz7XEc1xk6L6n
	 jvxknT7atc9T0lQosYeem4eWN8GxAaktPyeTzy4nCkRGAq9FilOWzYlTFfqBjZaXqI
	 /I4Yos6K6bD/msF9q/f5JT8cBLo/4npT2oOduzFalXzq6tx2xZs9tQy5eSswRWEqcM
	 B/snSMNHfXnNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550C1C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428605334.24011.13107075208805149350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b6849d6e4bb9b1745055499617516c0f5a796e25822f1841706abc11dcf98c
Date: Tue, 27 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664286053
