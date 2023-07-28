Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB0112B82
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FFAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690548728;
	bh=ImxPR0thQpuGBHM7eNIO+O1T1RDDXRRyFXwk07zqYTk=;
	h=To:Subject:From:Date:From;
	b=rhOYDWczCaU9EkBSQoFWpS7xqMXJpxEpwTdsxShj5EFMIDMWLVgxs/MqLolCAa/da
	 pkDHwN5wFZ2vSsTqbvRVUUInahYKPqe3YKjrf5aq6flHbekBEMhIDgOV4uTnXbJEts
	 jyJq8ghI9QD8EJaunghtZvcCRVBU2UC/ShVFw5iQKq+FWkdZ6dnInCqgSKb/1bgiku
	 62keOoqdM63hWwZN6I3sWPKNKOAQvJYUFJrXSLXrBc1dnHQn/i84FDXMFvhcOvWVpU
	 ZGFLBXU58TQ+vjLTI8b7MDIl8oASylKxD7hzeRJZ9QXui2ahihLdIGd0InlTBKycFT
	 0hcoFavgZADfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFFBC0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054872868.14904.1736828771761889944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb7db6aad88a3cc4b0df33acb13393be113849bf69677f29fcb8c89fe40be7f
Date: Fri, 28 Jul 2023 12:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690548728
