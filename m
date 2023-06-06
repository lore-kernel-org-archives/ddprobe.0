Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF9A7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AF5C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686012725;
	bh=NdEUY3ieU0H9TD+U6QzBD1T3C5MPKHSxoSkCTMlVqYM=;
	h=To:Subject:From:Date:From;
	b=j6h1EMNTswUKeEvIHkfskqHp5zWvoZ7ToF/A0OLPpY7M321Kb2O+Jm+S8SNaTuyBC
	 6TxLUYf4ZhRd5dOcCd+4kRU5jxmnxgB1PYh/SJ9602PgSjOgEHprtJtOZvM5wUbmAV
	 zRPJw8icWwf84vMKNUrziDZATp3s2IH3EbOmgZ6zIWdGZBgjU1H4KR5Dg1IKs5DG0I
	 Q1LwoKLPwB2Ar0XKgebfDxz5kIuAFHgSavgN3jYGVHV+k70CoZ7i1A/Nz4ab88VprO
	 4iFkkcFVJO7smQ3ak3GBvEfKk+Jw+s3C4sdvKIWFpEQAnZZtLhA4lG5gjsSdwK7kjS
	 T0Eks9EwW/OXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F38C7EE23
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 00:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168601272573.30288.16686429319581863017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e394664cad1539cd2b8ec29a3b1563c68a5031037aee680b1abce62c0e817948
Date: Tue, 06 Jun 2023 00:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686012725
