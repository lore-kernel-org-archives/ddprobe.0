Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6022D20F2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4E4DC4339B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674303125;
	bh=PXtcGpYwfKgaqBYxfc8sfShSOyFLPOYCabAmUO3vYnk=;
	h=To:Subject:From:Date:From;
	b=Vhy/+QEehLuADfob4MewBkxLGRGBBAS4g8jr7Hod/hlc9KrTtalUKQ66HO8ePJyrT
	 Pm3l9nXYJdGwXl68W1bz7T4C0OOv9Hkh4lE+XSvntwPhAL3B/8JDU4RUPemJHAcykH
	 BnLKo8FJQnGwympKGJ8KfgCdWJhIHU+QNlsOjAczC30rw/QmcwV0jn6/SpXcVyGDZ7
	 PLooH2wx78Vd4nVkuIIrRfBCukDWsW1PhHDM0Dqk7oANg1N79GTQDoHfWQkvGo1hia
	 9n8vKSPbwCNm0dml/Mymj/jZiFX6dJz+HDQdiHR720kdDFMlNtHXTsQ5WJ8tJ8lhVx
	 2sf304+17JLoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73C3C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430312576.3088.17119058743643412288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76932ee49071d30bcec74b615b713f8a432a456bca5d442e29c09ebb13f7f31
Date: Sat, 21 Jan 2023 12:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674303125
