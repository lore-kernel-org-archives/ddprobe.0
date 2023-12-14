Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D05D18F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4rADB4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E93AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702513696;
	bh=/M+j2T8oK7WY7da7pYILw2vzOZd1a144LGYPz47Sw8Y=;
	h=To:Subject:From:Date:From;
	b=H4rADB4YEocqgA+izsyWrYhr/igqi3JlUcFgeLClm6hEzy2z8h8VhDCYvq/bgjaSZ
	 m5EnU0r5GOgiCoqqHmLArpIQZj00OmfpjgdDOJW8TC32Ze7Rr8J3G/dZqnUmsLNMCG
	 oJLOhnh6l9klX5tZ4fBGLQhospqoxoSQS46w7ScdBthJBr7rvfHLBgMgPUJ81norIP
	 TT8tWL0eclATzCQ1cI12o4eF8dKt2SnzZfUCiQeY3F8OWjrkeK1vzgIqvQnk1jiMRl
	 mMM3E5hovg/KEGt3PCWgRrrTW5CULRxgWfK5hoxWribetcUq3Mbh3xfJaSIQU98EBK
	 ihRqseohzhvYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB5BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170251369637.17591.17007919655873709298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6711d3f99bed121d6ebdd352f69958c67b552d0b07394cd48cbe20d8954085
Date: Thu, 14 Dec 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702513696
