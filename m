Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DE736C
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755FAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668904254;
	bh=fUkIXOYLqCmBs72qaxU4HFB7xoeZNGNlu9U0ArT9qb8=;
	h=To:Subject:From:Date:From;
	b=XOiWQf3Uw+K0GRorBuU5CxM07FexGDUmgH6RYq08CZawSCN05ITuCQeiWPyxe+FNv
	 f3IHZih8HStGQne0+Zrfe4M51QPXJip4bVt/xXGg4Dkg3G6neE2IHvtz4aLh4d26QV
	 M0hKOeoRsj2wX5WBX1zF7AD9KYt6fFbzonWQpe2cvPEzZeHqN4UZyD1bPFFLK7mJ4U
	 eiKGFN8SnvKZK/c5EakLWHg08+8c2q67u29kJPcNr9hZNXUvHeSHn1MPZK0j+DD4u7
	 lV105/Gc3kdJMFTaYSFq/Uflm5LpXQL/ymjrfJBPHPy6SI9DrfSmtw6N8oq1t+1ROg
	 OT4S3GjMLGG7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A825C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890425433.23753.16893043326133806546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9e137f4e875edf676f9a892e8d179cfabbc979b88a1f20c15f9a76a82fe3b3
Date: Sun, 20 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668904254
