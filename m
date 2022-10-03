Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C3D7C
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0B0C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664812253;
	bh=ZQFvvCRneESL/kl/Y4meGUWsmRwvpJKig0a2RHiYbyo=;
	h=To:Subject:From:Date:From;
	b=jEehTLYBWbSN7FWDAvihI7OYp9qGFxWrSgV/DhJSSkoZ+nMrwHlTd/+5ZuF1oEs9S
	 2kVKridcOl7VRgT/jURZxu7kHoa9qAEVakDlqQ9fbwMe/rAP5dj38WmD7d9SpHtqpt
	 UV0a28+4cAyHqaB+6FJA0frTHzbuJAYCyHhvq61MQZ0v1cggfFudjUVwD6cUQlAahu
	 DLzeJb7aDd3vPn4JCrQ67BftPbMgdBg1D25cdR431e++fY/Cy1TxCJqdD2UiHCR1xg
	 qJH8GdLKujFOEqRMFRWYVF0kWq3UM9GSvjZaAFRQGWD8Ui8sE2BYBzndd6CjGDP/fd
	 xGbBkbx4r3mLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52FF3C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166481225333.14813.10812224746979886709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ebf244a6cf1941d4499ad8068e9df446ff2f1926421c95f8e2436f5f9858a0
Date: Mon, 03 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664812253
