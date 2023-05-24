Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4932718C0E
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F60C43442
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684939505;
	bh=IY5pvKt/F93Sj4YTdp09VQWgpRd+v24hEihbhBciR1o=;
	h=To:Subject:From:Date:From;
	b=iBljp/0mWzwsEYth5RR08CmO5kMY7icdKnJRN1IAEChRPSIn/W+VF9ozYZKpOD5WF
	 CZnfv+PJ7h7hp8qNcJVDg1Xz+/aP3yJwfP0ZDzT+ryR7lkZXOJWyrM34zvJwLKOdqH
	 mD5UNpzK5T86Ny11qGQOxB/sIVL40DDgo4NYk2F9cAGJhPLaTfMw7WvwE/PcX7ld6N
	 cpV30KTmf3nWXdURQX6IMj7NM3UUFTaM4gYYXUsMhf5nAkpALmVnEjTCdBS8T6lKtb
	 HEW7EO0LcEXmn1D/mu0YHdpYb8ylm+IkvlJ3XZsHT3fWgDJicMkN8OVNkvqYY3b70z
	 40VMunvgvwVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1478C77B73
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168493950578.2220.6247351360938140311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92fa280d42309b7255db66b365bd9ab981cbd6081890d95b872d4a41fefb292
Date: Wed, 24 May 2023 14:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684939505
