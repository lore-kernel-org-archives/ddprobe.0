Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3FE192
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755A5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667104854;
	bh=il4Kg8A0KttvgSWtjgzuVm4WpWMlpzolN431Wg2uwfI=;
	h=To:Subject:From:Date:From;
	b=H2MFXMvvDNyH151pJTQPwMxIMIQZhDOkjw3P2trqdq6XrIQjJnSN2C6o002SiCacZ
	 n7FYdqRA7gounW7M8KQqz2QqnxLoQvMShl/YjXkH+ejtyLV7XIDx2xq2TeD950rJzo
	 YOq78t7Za4a/fhIY17LZwqDLLpWysY+8MfoMuNrt8L2Y34SuzgsynfmJ8UYakK+LpK
	 gfdYR99qzt3r4Y66wxAxYras515EmqP/2dwQA1nfMk4eaZ1ILVIMLNLizdpclUI7q7
	 KpZJuo6hMlNWpJ1ZA1hLa9+z2Y3xny+ozw3qX4X4n7RaVw1R5hVAk39zNnbWqLjRVV
	 qS/gorVMQPfOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576E6FA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166710485433.20313.10808639134186469779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab8b6c92a04f9a31874aab87e0edf3296dba4a011bd8556ad3c1e352ee87e0d
Date: Sun, 30 Oct 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667104854
