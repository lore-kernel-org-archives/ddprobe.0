Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0605A16433
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpYDaQWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87ADBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697797696;
	bh=0wHyTlomWAUvW4Ab8LNELRDe+IKZPHRNrGY4R1rfwPc=;
	h=To:Subject:From:Date:From;
	b=BpYDaQWDs7atwM7w9f8O9cuzgVCqSiBnGi7yX4/n9fuuywCez+m5w+KJ6fMMwOTai
	 DHafbDsOmqNJm+xGy+JJ+ug4eoQrKsUFiAzK1Yx5tm/nMSUnLX9ASFk1D6/C5lvBa4
	 /FWoPWfC8E4r4juCzaqs+wLOsYhky5SY7nHvVMGKu9yNe2K72W1NPjAsduF1DExrbW
	 0KcRCNu2wF/vEYwyPz9ym+OZ37P92dLlAygU309KQOR5avRTV6nDKsxwbSPBf79Q36
	 T8p6/oR0ONbhfRt2BwRGDRLy9bO8kwkMmoi1/rNBb+0+4mx7LRA+L81sksxP9SFM2R
	 mCbt6RBx03zKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6559FCDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169779769640.2742.1765301485227303435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7f840fd8df769b75d82d598502a8739bfab526d1fbe25f119261e9270785b1
Date: Fri, 20 Oct 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697797696
