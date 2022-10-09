Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96212F56
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69377C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665330653;
	bh=lkijC8okYR+TSn+Ul0SSRN/C6fSu7oJm2aK3q/EpjME=;
	h=To:Subject:From:Date:From;
	b=Jlcxybgji8+xS5hlruAJ1WfHqZyKrMOiJbIh/ri/ZQLqXLemwKFw95DYGtFV6sFBQ
	 9JaMzgvgT98F125kEejXTMMBP2K+EE4TDc4ANJyIUshKF2qTSAwZoZFG1IJIO64DIu
	 QhsKGlDQrluufuJI7LS6TWgB1bHi26Qu5DNs4bgL9Wi5h2IxZ09QGyFoCO9m5mWfeh
	 ujUw/7jzNNYkXqwOwHL102LgfuVjV08BAj7Vbs2CfIn/7kAt1CA+TYgrYxxbL8pE/Q
	 E2bAbQm4RaJmJpAVzXTbTBmPYLLrGNQNGPewPymkXHXU+2uOTIJYYuYYwui5yJFYUL
	 sfHr4rLTOWGAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5033CC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533065332.2525.3398015583633221456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ffd534855716f4159fe34d3f1f5f3cddc2a5ec08f85944935eba2b01c105f1a
Date: Sun, 09 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665330653
