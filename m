Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AC520E8
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1F3C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671081087;
	bh=Z+gE49y5jJaRRqjVb96hXr0SfOiN3VXHpwHFz5D1XHc=;
	h=To:Subject:From:Date:From;
	b=GnlN9udBPFXmUfonzEDQXnPa8wIGZU+xb3WkG8iV+spPia99JBQTTKT/Hs1/Kdp1d
	 2XSs8SanO+RFLCEgV3OziJizW7YP9h9GBnI1c9y5QDx8JzM9VYTybGt/oIpO4YdvMO
	 Dt5lFHyK5hlJcv0luU2NSla1cC0PLXtTssZpGammhc+kSQeeCDZwKpkpHcWv9I5JeU
	 FmzD3dVKqvaN6PYcLRiDdJaUWnpZNNWxv9Ni0R3t+sgLI3obb+EESQOVM4u9xnPuuV
	 yZVAGUEt5srHrAtP1gMz/e7Ooz5EJi5dbgLo82gdPVVOZNLsBkKKHtboAH6M3Cri7Y
	 jDH0XMRMZpVsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605B5C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108108738.14963.279161965373243383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52216cb249eeef92df6a4746231ad9f423bd6b92d365f506b068727dece2004d
Date: Thu, 15 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671081087
