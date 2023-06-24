Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228B811C81
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D157DC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687645388;
	bh=IaCaoKQ8nDozt11P7w9ubm8YIoeNNce3Bjz/6JhwyHc=;
	h=To:Subject:From:Date:From;
	b=SXs7IbAx0Wc0VpeUi5cJde/52/+LKigmffAjK3PsNgoeHe5bsDyEVu6jqtBvCjCsA
	 z2WmZ4/Gqzd0eR8EDYzVLfINaqcmTu4I+RyJb3i1sy1tO8v2bS+/xWE5TedwN2gHew
	 9x6tvQRNLU0KsCBYoAdVy1XkUNYmMs2jOM7UjVDwjm24vmNw3KcEB2CmMjppnpg5Q5
	 4s2JModl3ZfUg5OLAH77mqOaRxIjtOS7M/ns+0zSsQZK4sRbSvhj44bws0zLjpiOrq
	 +rdKOSLU9fJqn4Wl3sey8EgMVoVRrSiZcQrNBkRDHgpsLG7PWy5L80iFxtzUksyGrs
	 1Tr4G/lJnJYWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B333CEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764538868.15732.8611417718494486818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113d1fdd6a3c08dfb527f3d38af863255224c9ed5e391dd71103c7c99ec56a9c
Date: Sat, 24 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687645388
