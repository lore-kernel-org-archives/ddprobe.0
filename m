Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5D97C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E8FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668566454;
	bh=wo07rQlutRYYH+l2nh9OUrMWt8KB4TB3uMTasXGsUP4=;
	h=To:Subject:From:Date:From;
	b=HvHl25LZ6bSIQogzF45IK2a8z3KrLkLB5GRdoYhpWi/KDXBUc8iDPKkBA3SQMJRqM
	 UOflZApNENqMFgR9VLFZ0LMBXCL4GbaOYIHpzpFwAmwWZN9BCRst68INBozrx0/WF2
	 43SAz/T/dJMp6voMhW19TFH0sTPc/+gYH9reSPqyZFwjjMXQ6j6vUkzfYKRjCQRnGd
	 ahpUBCHftm8b17aXitOJYN4MVzX0alKmbTeuasRrGV0YAB5IHYRsDtBdK0TUkf0ugU
	 lealxT/jzcNpUOFHXUz7iB+SRDmWUI6UpmCJh68TOhAMxRMKXMJ+fUzuIMfSx+ud5/
	 4DMBLCyPe0xLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501ACC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856645432.14693.5770032827629054024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a65259d84b703bbeda79c78e0f79019d1314e3de3905043322ad952802d0ec
Date: Wed, 16 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668566454
