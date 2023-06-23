Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDF9C8C6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DA0C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687534388;
	bh=1rY51ypkMs/WYjUAE7CoNtlVev4zi5JwrToyIH3mqqg=;
	h=To:Subject:From:Date:From;
	b=ocNf1PS1HuvcjpHvsogEBmSpslbmcN0Nm4Y5a2vez4VP6ECBzsI/+0XQzJJjHyctJ
	 Nvo9xoStjKFBkTZdmU2Uo7hAAh8UgbRoLZbRaag7PIK48JzOME9bCuEPcdGqBh/VDE
	 fRrtczN644yEcOJjQ4KTTGP1Pdb1R1mRqna7LaRaULfEsw0ksqdDWyl89y7+w76Ui4
	 2x0LjRLN883iSt81xfbPJW8yQ1jf6BlyGoTMO+kmtqg8+Mq85mL7KjXxUORmLVpXXt
	 SJvAUM8quF7vdKa3s96/MBDomo8dbJzEnsOBFa/eRl5BVxO5e5EmoY4vurXLSYSRES
	 9SZ65wHj2U01Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A747CEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753438867.32438.9839276800152802858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771ab828b7230d5ecdf43a76e2fae74b3c3c5912517b50e44c8c25780938eb4d
Date: Fri, 23 Jun 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687534388
