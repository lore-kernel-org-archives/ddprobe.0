Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB2610EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A303DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673836887;
	bh=uoEtqK4XR40PML9NhIwrDJaefQfHCKKp7t9URhmemKM=;
	h=To:Subject:From:Date:From;
	b=RCSQCeQXnsZfswMnyNyeAW9n20bPP0qBZchWl10JWIOXLjL1KWmCpf3V9A2fb4hNX
	 99WubbuV4N/8+sUzUnYwOmB6DM7Aw24wxZn335xPw3wGD+i+9hJsbGHk8VFs4XZ6xJ
	 6VO/YG4dhfWkXb5fWVuf5gs//YFqadCunpYH0uMJ2dTLwqp+XrRDgkHwCfANWutkZ6
	 UU7wu/F+gCmsABG/I+R+UcFqdv1ejXf2MdnVcW4D+1cziDXAwGwPaGvasbnCuW4v7o
	 +FfRObxy1G+6JQf2YGLEM/Z6ZrtxoorZ64U5eBwpJYA5ipzcAGuaQnQ7cWV3U3ybiF
	 CymMuNkGZNZkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E83DC3DA78
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383688744.20813.13629998482784450469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504b784e73d7fd14656be581389eadf2cfe0c05dcf8037938d616cc132bd8f4a
Date: Mon, 16 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673836887
