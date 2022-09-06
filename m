Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED057E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 672F8C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662486053;
	bh=1CR7YWaJiDY0fJn2PKPSDjbpsr038GOjxS3ZwFohokw=;
	h=To:Subject:From:Date:From;
	b=VzsoaBH8AnJuWjUO+yGLbaYlDAvEjMdHx0t47lfJeloU0O/Rps3omBcdbfCjg1R2c
	 3PhHn0C3xVuJn/u867Qk+9lMJnwKsvITubiqElKoVOPV/qbngk3yPLCvPKYD2VXM6+
	 eQQMiGMGLZJWJHtDmDw9enS43eMZYtdpUFvIBXX8/2sBWvzc0oMblHbJdZojxtl5A0
	 si6pGFD5MxNnlRjPHtB1oOhCkiHH9rPO4Ftt4JoEbJnUjShst19UCqsPRxjg5Z4WjD
	 S7TYRY9VG8a9eC8Q7PuWoeTRvi7iUurNfKhakSk8YBE0MZOkXSoa5Rb6do4fQTtasu
	 7vfPdKSj0Grnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520B8ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166248605332.12424.3293755950440609280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a223013682282c3e0892865e3e60c5ed850582dc00405f11c122d145927c787
Date: Tue, 06 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662486053
