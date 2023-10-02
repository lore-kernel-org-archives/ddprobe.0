Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB3A2032A
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 21:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD13C433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 21:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696282568;
	bh=CTnbSxE15NrZj9KuQgrYi+/7q8zc0iQaJlJVZJ1ol8M=;
	h=To:Subject:From:Date:From;
	b=QmWbPrnv9zWc+AnFmZKTKjEGCm8JS5JpCrx0QYYqzH7xYNJRP41JerhQXoM56YF8L
	 Tc3zaeU+Z/Q1tYPp+hnraXlNK5uthOxiFZXcLBpQlgDcTaovwr4AX4RL4x4n1ibhmM
	 eBzcbtcDIw8nPkXabakuubiL8rFvlN7HDEdSlat4seOEOxZSFftpFnlsLt4KR8nVmZ
	 OcVd+/vQR0DnLnuZ+UfwpYebFDho6CjZvQQ0xMXfhM4XeBkSf8Zgqw2A/Hwq10R8hE
	 q36ml31jEChCgXQR0DTQh6hYwsmqYzPaHteZNVeOxMedOtGSKjNv2YX7ncCGUFf9dc
	 D3dkyxSEemcwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B17E776C5
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 21:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169628256871.10821.15230164356751299766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecac60d79429b1c3a7d52e343eaa54bbe5a726ce0f55b2c9f0c33f70b4960e8
Date: Mon, 02 Oct 2023 21:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696282568
