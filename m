Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DF5525F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 12:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2ACF8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 12:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679659266;
	bh=IT7nFzG3v7Ju1RSDB8KO5bCMbjByWwsoNYCc8czXdRk=;
	h=To:Subject:From:Date:From;
	b=CyUWILrwCw+jb/TCg7vc4w8tyf6/xFGk8DugGRkpFcd5tlR/6rI+m4A/ccKP9IROl
	 DUqg0P42r0+j8WtVYrgoHcfP3rDdfcOVGGwMhvhpPVDtuR/0qFfUKe1cd/CbEOic2V
	 XbIltkkCFsbWY/iII2sE0q7zkWIlmGjro+dnnufJVCvmQyoh0GyfNaQorKFY7CsaSi
	 Cz4BA/Z4f/wKqe47WOoOy94zbD2zNfKGZ0Z7cj07WjmiLUvJWb/MNi/HtIJIoGNMSN
	 M58Uf4hFUBHGFHW5QozAMpAk1hfdC8nJTVZQZbBhOAv4ZQ+/5Ac7ySJFEwfmuYTuYf
	 8OXSVKM4OGFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E78B1C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 12:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965926593.11757.7014637030265603684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1596a331b29b0a7ebfcd5935aee95962c36794a33193f41e18928d1fef441ae0
Date: Fri, 24 Mar 2023 12:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679659265
