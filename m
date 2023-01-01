Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E15197
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8041FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672548087;
	bh=WV7jqL3sipwZyYO94bxd40J/qGiSFoem+Hw5wNBTOD8=;
	h=To:Subject:From:Date:From;
	b=sHHGA0BBTFxR64fae9ezWqyWnI8iH/0Ai/DnAjVIHQshi6XRuAdCdtgbtNU4xPBng
	 kGurgDSTVTIeBvMzmNnwNZODJaiUg7JCgLsc83uyveK19/+0Mg2Rp7FKTrWU0eNQmW
	 VvwwIPYnRPr+3OiWgE2c/yJ889URPagRJnFXqcm2OOt4VxBF5KQc00LSCi65N1CY8R
	 JB3iv3GkjS5KkrBWUj9EHqzivnMV72Hq9gcSD1c0J9tODcibAEUJw3CAURRKvwHNfE
	 cCyZdCp9ux9G6meJnPg4fxP7Pb5pZwksItO0imyOJ1zMST/aJ3JPqzemQzkw9CBGk7
	 V6I26ls9h52Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C55C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254808738.3716.546703010096019661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9600ff2f4b6fdc9c6367bc3c94c2e79115f38571d4fee781e949c85ad9a8024
Date: Sun, 01 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672548087
