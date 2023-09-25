Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E8A1399
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 02:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5ACC433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 02:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695608708;
	bh=jp0xanHL/PgcV7eQilxDEWxIdFN5V1CU6totDTOZneg=;
	h=To:Subject:From:Date:From;
	b=KFiGuh6IDpkvcwDvm6RH6lN4dk78uxU6Fyj8T1IBk7+o2eO7qYpkRlsxlaANCUj6A
	 aLORr0vvpPxcDKiv/yPz9KpxmygfHRXihl9Rbx7jCIRqfuZKCAGcYs7Wj7Chwd0T7r
	 8kRTBUwDDFdnvum/xBf2nnih+8FkdEdszVmKRPt66lIDjz5GGm7EGnQ81QJxUnmOIh
	 PyAqjtpP1DCKrXrXpgd4QtB0Btr87h8oy2JYC7biGjlB3kkyl+hOpi5yknmN+WChDc
	 irrLxZ9sURll7CxqzVHmgZX9gLZ3MrEHe+/S+5hWRVA/jOxPisMo3x6OuV03rITe5d
	 3XvoFC684DMww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC7CE7A8B
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 02:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169560870869.20250.5528493264529414190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d73d4576e881083df563d8e4b3c52f24e9a25c12dd538fb03e7080ad958c592
Date: Mon, 25 Sep 2023 02:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695608708
