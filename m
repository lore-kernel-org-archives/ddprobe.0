Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC397186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F67C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666862454;
	bh=+/4u3U5HSxQkK36VZV33EX1deg3GqpELMO+TOiCD8H0=;
	h=To:Subject:From:Date:From;
	b=W7/GYIEa5FFKKcdOvUXP9ZXBm2gJMuJbcv0n+l2OP4FSkSqDqc+OJtT3NDzBlGnwa
	 Pi84y0CcA7Q6ifTYydaO848FYPrwifjpQivUUR1JEgHmhWwIagAtkhN2dECicPFLGa
	 eMUPbuU+gQGAqYzMALUM/+6jfIpP3gQ9+7Z0gdI3tzxgz5HtHwzjVYQZVWaQazNKmk
	 iLZisqsaCXncW4iIPQ9FDOmP8QPACCO01BcpZw+jUC+mp9ADo04bAeXcliqsVV594r
	 tjFKKUN62S5P6H3bYhgReHu5QsZf9bf14iwHy20ABJw2ongAXBKyK3Dbawc+p+U8Nl
	 ReUDylYEn622w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5069BC67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686245432.20142.4323651660908088749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a70836d39599e8ac9bb44da27ba75d2bfe723fb1876d0c8c5e8701dbf8eb5a9
Date: Thu, 27 Oct 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666862454
