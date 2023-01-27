Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283E315A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AB8C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674784385;
	bh=AGyNCTRdORhdEWJflu9t+YLNxo6zAQY9NVYN+6Bu9ow=;
	h=To:Subject:From:Date:From;
	b=DvVxQ4afKZY944Wuqe0UH1KeEEad2z3SWEMvLqYLalCweNGhVCZgE2xpb8mpsBUxd
	 x6gX9q/49TOIMP+hnJFY9IQOfbFMLFJb+NIyaVw+lX1K9l67ZcCP2FvwPijz85dgyT
	 U+s6Nk30DSBvQHnHP3XgBuar907gBounzbwh6BNM/lYRQxXI3iNkYG/DkvlpSecuRd
	 ZR7GpsX5R9F08Rw+t3S4eNdmSo00H6ufAdiy4DcN5N6Ccx8sIAuMR/1XD5kz6B8BCV
	 S11Vqn1iAPeI3MhBF0cm5vLSfNZyzHlquFjua6AWxhMDx79QR/M/9Gt/ykwgOmCJU+
	 CrmaMy9P255aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8595C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478438574.19777.1471061639766825526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9cb1ccc223f7841348df5f11f52ffa0a1e6009a33d167fe5550de7b394f154
Date: Fri, 27 Jan 2023 01:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674784385
