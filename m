Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A443C2B
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82145C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672839087;
	bh=wCzcyuJJDQTa/FmdC40mP/5fTUU5rrvKNv8OcvWnkxA=;
	h=To:Subject:From:Date:From;
	b=DEHk3ZiY3sr7G4HjcVzpPg067YNfKGL8w15TKu//QpS9OuUa7nv89b4K/XafWnoYk
	 ynLXbI62/GpqNTLrx16acLtEQdV0Ccz3tUZ0kOKxIWPF0DUDgwUI1XvVUVXly4xl0S
	 cB/m7rue5dDotZTTlz//9pVnATc8uOgoGfEqKkGkjeVZhGhGy+cP3pVKAHPqSzU9IB
	 uAYgLP6Vw89SHjezremV8Iqkj9zi07PgLLo+4oTICj82Qgy5QZtohfUfN7mZ4Awk1L
	 OZY+1bgCrsIN5ncNxqcOAQrqipc6mCTcpN6ZqiaoWoWjj7MECzJDlGTsWAECL0qzWA
	 7QXk6j4wyyBRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C41C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167283908740.9215.1141591651838204177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01ba730b29edcf6b9bcd78790eda4536534f0760e8d0d6b3ec28f1185370be3
Date: Wed, 04 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672839087
