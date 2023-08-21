Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45500185B
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3BCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692611648;
	bh=0W66J1JKJUOO1mVBWiG9J1rUSzBj0LSbMBDxdgVFYFk=;
	h=To:Subject:From:Date:From;
	b=NBxMrrZHHW3Ew61BqVR6j9J7WsnhOIuuIGMZAnmNKnqHZUvY062izzKpImNzjKaSo
	 QroXXr88dEX/e4bXbF+dd+0Ta0pjfOR98NCjyUf3k9b1oa5+ZkDNhFvO0gDLUXFTcw
	 OONsBsK9+pUfxfucAhy/FINln3Wc/XQQRHZKzz/H9GYP2JzP+4e4yTurCXLQ6PNpyE
	 qCZdzO/aQixI8gvSdRtHhJU+Y4QHwHXbZFgHuF65tE0iQ/AeMRdT+JU4HnS+e5OTEd
	 PSplaprNC2s4GQf3YijfBUNOaqiHnLGkyV2Vaw+TeiT6iDH8gJCJM7Jz45iJ7gxIQO
	 iJxry/Md1B/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A312AEE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 09:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169261164866.25633.12572422381783574379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9da7e2178a526e614b63ade3f73f68c3bb6edd8969d55d4fc68a09089d52ffc
Date: Mon, 21 Aug 2023 09:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692611648
