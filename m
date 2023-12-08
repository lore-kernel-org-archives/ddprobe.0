Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5561382
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KB2cT7x8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72783C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701997696;
	bh=KZfzGerk5C972L6UHClVmU4ZrrLB3UReRPhBS6AjZVs=;
	h=To:Subject:From:Date:From;
	b=KB2cT7x8rJ9/2AB6PitHmFjkUwOlgPC5NihQLeeoyypm8S1eL4D0QfYcRfSmga4fc
	 FNtzAfn1z46wyX7Q1hDbBJt82Zg5SFmSVjHba/MO+pmC8J/zcahS6vlcqVmzcKrkB8
	 J7Zlu0x9PkSsq3Bc/h+QbZbo0BWPX6De0iD2DKhc3lJvdf5US7pkJYPaSTVKrx/r3m
	 /CPT3MHiTk8s7pFZgHvOT1APTsWqvWRwkHMv2pqpttyMPqtEkFI+M1pxsn/TtpzDcN
	 eVGwu29hS8GOIkackA2mCn1j6p7C5O9ziNYjocvL+pr/azrz7FY+Vhh/w02wT6uUE9
	 qDOuivwuvXNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD20C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170199769636.24020.12820598165643145062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3598352643ac1485bacc701f5a357cbe2c38fa5441feef43225db8d003f02347
Date: Fri, 08 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701997696
