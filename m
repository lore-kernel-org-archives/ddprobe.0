Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB98633D1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A70C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663005053;
	bh=GpwxuKa3+8jfQr5Lz9PWmr1j2+CaQXqC1yYGAAB+Ecg=;
	h=To:Subject:From:Date:From;
	b=rNH/ult49gUpxOsNfehtA647snhcOJeGyCJQujxuIDCnasNJN3lyegA6DrSXVdu2Q
	 titNKRp3L2PBMihShuAa90WpWI+GZxxU0mc2cnWtZXJz8aixNCmSteJw5MCYnYoDlc
	 5c3auXR72uIXVVZh5QUEt1EqD/bYE3P7qe7U37UoSRMBjBD8GvI7NFsnyDfJUKiKS0
	 ZsBhjgD2NstRf+cSEJdz/qViBAxNl7Q52sqmHcs1IK5Iiu9rf9jPqA2L1//wEqPgg9
	 FacrJHbWtVRQvUG0yQQI24wx1v9wbxjhDLQcIP8KlKap3uiPEPmU5N4JmnK8jnlP1h
	 izZXgXD+fqlsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A8AC6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166300505332.29242.11060411194243749522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c6ce7988eacc406ff239fa3171e9b2b571a4ddc95ca2c6ec0c52e0a0503150
Date: Mon, 12 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663005053
