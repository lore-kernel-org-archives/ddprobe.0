Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8781861
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 08:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13F2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 08:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680077105;
	bh=lOFGuRlacv8l2Qj757ArrHYtaeGPPsQnqDlTgohbdaQ=;
	h=To:Subject:From:Date:From;
	b=kWJCdypJST3y/DNrKvTs+3FfZjSzVoNeZjlrk5LYo5gxwwo7KbpNqP9hIh2ff8wE2
	 oQTbMaMxLJqkzephFJFHKxyGZHqp6gjyDADmFkBcsJAz7PcW4Tm9m9H4p4hfeIkDNu
	 7QyT0yYGHC+Vw4+6JszoW543i/VekcAN+y3kK003jxTq/qorJnj7twEcvMzxO0urAO
	 l+Z54WZ7KqtHRIgXNbQFi1RUM5bd/IbMYuqiqghlG5yfYrAtkk4509Vj1EEOnUhcOh
	 MKfI+cTR7hT7MIChZu1grA7XnourupUmfDeN9BLxEKRhSxOQ3Yj9IQO3MlaaGxHDDO
	 h7UStiDzKyByQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34DEC74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 08:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168007710578.2587.1917286176199257880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0375df63a1a2a45b5ceacdb1c59feb6bd7b238276d00d707a4c9508058fc7e4
Date: Wed, 29 Mar 2023 08:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680077105
