Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58961FDA
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A24C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670838087;
	bh=YkEX3AtizB3zJ8auo4BZvC/sDwUovSLcv4zahV42QpA=;
	h=To:Subject:From:Date:From;
	b=lUNvdsSKkxzCn/s08BHZYOK5VeZg0EiZr8KDitkGdA6R/eOtGuocrHeG7W4Y++l1v
	 TlE6lk3fGI4plaPCKbNmRfurOZf8U7ubrkHglgUSunbD2UmZiKHcpVJJzF1YbSgizV
	 6O4wFsVdDmJtUKOrxqZ8MsqqRhn0FBSY5V9NUJcr03PPXsLBiK9x6febKGntbABt4j
	 7qRygIKEfYs+E0mm0eC3eKw4WBnQBBYOIuQEfBwp+GdTDeUW0oVrK6oO6BFwiqYJ+l
	 jDoNW0zalMwJoo4llGDfIAE4T/AppJ2naijKaSUAAD/xhVWUCCyHAk4e4MYn2WHKbg
	 ewqyhraCHnSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D76C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083808740.24869.2340823759087708913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091eaf025af1bbd86a013ffcedf9d9edca7182fbef82311282906166dab38854
Date: Mon, 12 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670838087
