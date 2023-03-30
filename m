Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6BCD304
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 23:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9476C433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 23:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680220206;
	bh=OU9QBkHK1Y5mdTXxbXyvfJm/1cV8z1TH724DrxhXZA0=;
	h=To:Subject:From:Date:From;
	b=FTF3cCN6ToTj3e5MBE7kS3mUEDmUCTOfGTMSLgTVu+Kd3H6kIAVzBZxVYPR96i0AV
	 7PbrZUbe+0whZD7DNjaUbZHh8ztzKHYyoaWDS522uYWX3+op705ss4JRUg3bu6bZOH
	 Xe+XIfzm8e27h1Hp8yk7BYzz+mWvqvkQn6cGmfB5Ilmv82qCSFNTawhRBBEKDkvt0E
	 OL9l+/JB5J/GHnf3NnvOGkIGpbBdRCoITFod50JjPP6vd3PSA4teV2Ep7XVdtIC8pA
	 rBbULoNpyGYiuacb0t9S+Tvc4dZCtJxdarqmrVhXtKxHmjsJqmujmd0Vn8IWrmcTMo
	 qzaxOxeTAn4Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02A0C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 23:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168022020577.25032.13287368125273695370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4c0e0796d809145def581406a2a92122256edc7181f462f69242a0894a3d9c
Date: Thu, 30 Mar 2023 23:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680220205
