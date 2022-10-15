Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE67B620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C67C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665795053;
	bh=SbFcQ+AS/4imy56axGKL19zLrcd+mCzTtKkfdqLb0LM=;
	h=To:Subject:From:Date:From;
	b=GJHrwh1+9T93tSGcmT2HaUHn5wPwEgDsL1IdGMnytqh4ZxkVDrrNA23iYc1s7I/s4
	 +VXaTXsvClRlg1k3VQJO8DyANyM+NGPGpk449SI3zS6qegfjEtHjqRXegy9WU6zmi/
	 3f0ChGDh/bGkD6i+/fms1DhOCqv+bMeVsIwvvWkSucUgmlOVotHKUVVTmzZkUzyRzY
	 XXo+pbO3BJupDYzhF1ac+2jQvzphMlBEkzgk94rx0bOOY+R7lk7jWqfQH53GiPYO6F
	 XusnoCk1UQhX3SyEpZuW+UvhOn5t5JUE/kiPKAb6Kz21dxxwlGgP6cEVPG6DtPJF24
	 iAxFTxYYodelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A78CC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579505336.26986.14001654707448437622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c61c231cf781bebb84047358ac246747842341882b63402bad0f702f2083b1
Date: Sat, 15 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665795053
