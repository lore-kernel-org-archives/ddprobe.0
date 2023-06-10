Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E7B408F8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 211E1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686371886;
	bh=P+CDGl+H0Ikmth6Vq5kICrV/nR6sZgjRE0iO6Rq7Wes=;
	h=To:Subject:From:Date:From;
	b=oYQ+G53Dv1XxHGx5e+0hRqogHvT4crQXBD/J6C9tDfkFdCr2bdsZlnuiTW5qs6KZk
	 ywkcuohiK9pT06k1EIZmFrl41gm8JoIbpTsZzJdgeOx0BuLh5Ca5GAxsVos0BLu8Xc
	 4GjboSncgSPWK16n1Lm2+rqf6+Vzthb64htNXSLTp4JzH/x/+B397c1uGoqtkfzrgp
	 hd1v2lYRSzaH0aAvLUQBNynHJ4Whoq5fWld1IXMfgeez41gcGIU4r0DxAR1VlKmgZp
	 iefW16pRQPbSZ3HPHoY19ufReLsxwo8bn6IuCWKJ3g6o5058THGbxjkeXBOupf4lhv
	 MzQaQoKE55jzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2BF3C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637188588.9990.18233665599796573366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319cf532d63fa32498b952b7e0c7aab1da65c6d0711b120ecdfae0d8cf0dba4d
Date: Sat, 10 Jun 2023 04:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686371885
