Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAEE1FC2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E76C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673944887;
	bh=/cO3tlUYwhkbrreSbEY0LAJUETza6i1iuV0H8O6KLao=;
	h=To:Subject:From:Date:From;
	b=UUsaKvTvXaOCEMd0ONEMv5FZIX1aDngtU7L53jRTyT69JLleP8BSCb9b5cz+1GNZt
	 KFnkJ8D76CvypDsNi5AnwwaJj7Srf+BMx5utLbNSYlQe/HjTwbBYIFHw+ZY7SAENHP
	 7EqtVYWt3kiEBwH/L8ivPI9gxRBO3n9tdl0ZJQCKs/AugSbQ3qXiVszC3lvH9aub8Q
	 4FbvAi85ukgiuwBp45ZqOZXexadAK/3NT5kQ3ODvYQLMzynSYPKR0eaRN6DjkzEKtH
	 bfQFiGG7UmRKYO/Im+IKomTWgyO+H6HY/CjKGdzmiGN39hEBBCcqbD7jt+V1YnRFwG
	 ewSS7VVlU/B0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB79C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394488742.11157.14458055568620790551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b66179eba3aa595b515ecf3151626d7253a6c3da2640001ae6168a79feece2c
Date: Tue, 17 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673944887
