Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8D32119
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 12:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EEB1C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 12:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677415566;
	bh=NBestR/ODbuk4SQ+h2oRnzfvglOVmFaNEgRhgNiYPiE=;
	h=To:Subject:From:Date:From;
	b=Wi45kkt8I3vdzV35SsckNchFKsKFDml5suNuSIYhY657q8W9udQwXKuRqEJ/YRMKf
	 TZaOMW76G1h3L+aqQvVeXnQyeOh+gUXstWUoNgBrGWyXBhWeYB0rtPcHSL+syX/lL2
	 WGTuR0Bo4HpDJqEt3qZdtQPO0q6iWmQZXekBO0FwJ1y7EP3j3OY+ImoWYiTE0DHXoP
	 ZGux3kbJU7Qvw1Dj+mbakg2yHGm5Un5QJT33RnKJ07V/E3X5euFXhle8S8J9LMH9Ka
	 al7iLQl3HpSUdH+WrSfzdh+EcaS7Ba/6rSSKO7in+pxuq5LOvhru+yrnBUJ9oX0cid
	 MTIeQl/IcTTlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09DFEC6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 12:46:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167741556599.30392.3448313697107813589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e788e4c9c0e25293f0c9f4763e58e917641067601b536d4ae85fa3387bbc4b
Date: Sun, 26 Feb 2023 12:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677415565
