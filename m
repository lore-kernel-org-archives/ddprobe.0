Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D751128E2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830ACC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672488087;
	bh=+ihQByIgqrthYSUYVFIXEgGNY0DYDsN3kqQf08QloAA=;
	h=To:Subject:From:Date:From;
	b=SyT/LeaTwUIytH90WxDlL0ibLmXHFDmsHgcdqfWdVYc8sQ1unxYYh6/HJddpT/M+x
	 3E/ZoLljbuBe/hHc5AcmAnJrKkLXfy3odjyyS7ZztN5DT96l4hPuYNrBmwXmZHhpVb
	 eNjzRvOdW7z0Oea+8pK48HhtVjMBN8ZDLvejV5sclCGDkDQr3kGvFVsBfEJqtyS1LK
	 VAwrNhaqGFCbMW2luI17terR5sfYHFLalQNu3oSqcTtMOHamERaHpyLRVfbFVj++NN
	 TQkdmAXmbCSS4EnuFu1/qIn0t4PK9PBYSv6Wq+CZZbKqhZ1wMEmobIS2QKyETDokwU
	 4lx8DEOSFhBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69982C3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167248808742.31331.3734584409550730964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8733a35254b855e1aa2ac96f72af4ab80717734a6be9a2c14af73444b63077
Date: Sat, 31 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672488087
