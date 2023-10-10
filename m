Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753DB24C8A
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 14:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obfwkl2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD88C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696947428;
	bh=bOM8sLlRapK0qCTE9ZOvWkVJu2uojfe+fE9LLMaTu4A=;
	h=To:Subject:From:Date:From;
	b=obfwkl2ysC2J7bArAmwL7G8Tv2BsSBxi/30ZrZ9kq1rKbdnC8jsL00kil+Q8DEyEV
	 36+j8m2xUdfEg+33tYJyshnw8+GbUnLFoaFGGuZ7GQAzuYjIXZpjgLtyz5ynkxK7q8
	 pjEcH13Vrj7LfVpiLuRSwY+M18opMQE1lN5XIunR9keCqpKfvbSwtYfqG/pYze/vLG
	 oJh04K4Vc7lnwNq2X1rmJwOp/1izcudv0ZD9FPsTTZORBIOJUsYq7dm4mYA877R17Y
	 mxyduooNp88jm+eGfxUg7CyrnTyQ2pMvtmJEEcvlqflK6Wpmjmy6Dz+Ka1c804i0gy
	 Lb+2IhJG5d99w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B4BCD8C8B
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 14:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169694742874.28930.8309853107938921472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a6db3b2441d4cfc9bd0611a2c54150bdfc13563bf2cdf8b860149fba667190
Date: Tue, 10 Oct 2023 14:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696947428
