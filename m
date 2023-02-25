Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB4E33CF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0184C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677362105;
	bh=DMS/AK4WSYxsbIY4cyvaHncgRmwYX0QERXlTAe+gf4s=;
	h=To:Subject:From:Date:From;
	b=sx1cXTfYmLtuOGRfBZemEs70FZ3VDQDI435KWAW8HYGxWmuoXKxFi5sgYhx99AcNk
	 ol51M1luGt3hMQfiFVeRveicS27FcdsknIpFAHWK0QgfNXh4Nok0QbWyFN365cGkxu
	 Fd7ETsRb6K3q7TJeHVI8jfDs+eoMVh8cuoI2tfHT5+6WMAQVEIgqHnIiRra3XaWGOM
	 VSwwE/3OgMXnH+6R8vY3k3ywHGB+86jtq/xchNuXURWtRoApBeElujOg2pQFdCTGNA
	 KvXUXAYqyvViVZBL/kxHJWoGizKaVfW1pfwlVqGacHqI6Picoq/ZYZ/VJlmpqLtpte
	 hjo9rF8gqS/3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F83C7EE2D
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167736210573.8290.14499395479802660430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e357982d697509b534a3b3198b0f0bea9c37db8c3d7c7f7ce68fcaa4cc59a6c8
Date: Sat, 25 Feb 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677362105
