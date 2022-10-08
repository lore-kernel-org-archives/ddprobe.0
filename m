Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA772F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E81AC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665261653;
	bh=ulkoThaoeeIp8sTGIsQPQpjH31K4ZBHd0gzr6lypvvk=;
	h=To:Subject:From:Date:From;
	b=NejQl5jmfg+9OeAY8DMduwT9RQ3IYMUDoUPwlzdYqIDQw/l9cH+6jUpxF66nd9yqG
	 yrmWxQJ/RGBACZAYKOhEkZP23A7K8xujZ4oLdrVfBkUExfNeeIXIpVegXQ7RebHXMX
	 2+6veTL4DyqpHZKq3BgW5Q22XcRc+bGOqCoVcQ83fwzCyGHZP3iaMTVDx/HNAn3AX2
	 qVbiMnM8g8xruE/1xSwOONb7AkR770n/XNDcQyBkw1vZ9OYYBdWVnyCMelFDhShUYd
	 NNqYOB2pOGoQV4NmVR+3ummruYoUnk+jgdhJC6LwHymU+wtlTPo09KFA9TBadkDQln
	 w4KOHo6Hp3JIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5154BC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526165332.7667.5153825983429939428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba32d43c11058b736dd63a682b18cbd93522582b0c5c00ce1b55727b7514f7fe
Date: Sat, 08 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665261653
