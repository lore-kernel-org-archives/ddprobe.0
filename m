Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E439EBE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D808FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681012865;
	bh=7ZOR63qMD2v+ui9HrIlA1SA6hm7uL59KNBF+C9bBBH8=;
	h=To:Subject:From:Date:From;
	b=PLqDpeCS8gSIzKLcIgmBM0KdWEBrINqJEueBAElful9aJ9i8xRq3RkWGdkxW1s+7w
	 Fm84n44RfVSCgp9rDw7aY3nb/T31kY1EgLPFraUunAVNByPAkED8JbnUK4nVu5+mXS
	 HS+4DM5UkSzi8itmaK6aH7Qf2/oGtO0Nof6Byg6Hz+8YogfEFftUi102SIHgevuizp
	 4sNcetJrugutDeUIA0OR9SE/7Xv6OkBesMXMdFae/8AyIl1GTw3Uu206e9WuBY2+I8
	 qBxwBKEs/+69FhOrXGNV+WbmcDecLT0eLDQwVuaV6wEUcIN2xjc3TLyWL6WSALZ994
	 hdoUpInoVn8rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3BCC761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168101286576.29674.3840966342931496653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2c3eca3f1bc3deb668fa6f68d844bb8aa8ca3cd612dda61c8661ae554c7918
Date: Sun, 09 Apr 2023 04:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681012865
