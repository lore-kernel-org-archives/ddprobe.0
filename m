Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29B5191
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E435C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665538853;
	bh=8MqLIlr9YEjgeMuBIGFUIt1jHemeZjyP3BuS8PdpDVo=;
	h=To:Subject:From:Date:From;
	b=qPw+wQ4QZhe0fW6KGDXMaau/oW4bL5A+L9YtihosNRTzjMb2eBujp7Xrf0RRQAjWP
	 yyYmLrOmPuf7QcH+N7Y60VzazCigelNj4tMDoFFwtHNNW1Rbc46P9Y9tiW2fzY/6SQ
	 6rIw9FmTMiX1BSR9KAmceRnuV+fBLWMp8kQAgBEoZjshDCQRI7TC7moKp2BHsSQYw1
	 X+YvknaWcMwy0EgRYBv6MRHF/B2iPkj1ugCJKkulv86FJAuSG4QjoDLenm0ruK0FNt
	 oDVYJGOFKXvS93qi7oNeILSpD4JdJ/6qoVIeoNQQqVk3tvlP6VqS7GQqYxnQ3o4MnY
	 coGbZgQC7ra0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54229C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553885333.1512.15296517936885923896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14412ddddc80b28e001e33f214174f51924d5224b4fd09d549a208e6f3aa4ac6
Date: Wed, 12 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665538853
