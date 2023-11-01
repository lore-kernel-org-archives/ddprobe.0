Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A9E15E80
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOw95GSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BDC3C433C8
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698857896;
	bh=5vlFen580v6W6yOgtdjKU0VIyl8e+/b8LK2YycYAXfY=;
	h=To:Subject:From:Date:From;
	b=pOw95GSoXuAbu4XNGmMvANDBFSSf8PwfXCljpNfsR/TtlFHIHKlqnZg7Bph7q1dpp
	 Lul1GcycU94bk68/Cz8KPX3SpeUQ1/cs7U4jYe2ZJimrrakOZJAtiz3sxIC3yCT+wP
	 prD3tjvdFDL+jWOGIEJPxd8Fxn5t8KaEAThSVDV5WNRQH1MF3v7U3MmYJqTfN+6D3Z
	 uJvvTjzByK6AYBuX/FxAeqTtxGaMR3NQjufM8BWz8guPhvhFtvHzz3oIrcqnj1Qzdl
	 mbELk4j1Twr6SaXr9e/fq7cEYDlx5J8d7J+8f2duNQgStUgOFaZsJw7yNzufDRRbx0
	 P6p3EWdUZetJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688D0C4167B
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169885789641.31669.10047974083926847966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aebc0eff11aa161a85552516d521479367986fd4a4e242e6b26ecee9a510b9b
Date: Wed, 01 Nov 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698857896
