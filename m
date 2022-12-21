Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52EF3212
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8276EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671655887;
	bh=OCdCXZaYAgoADwUGbTRKjxiLjVTq1ZMfeNZOazCWQk8=;
	h=To:Subject:From:Date:From;
	b=fNYgM4PiZRxBoVL/sz1JL6yV/A7PrqiAxWZdF0mwk+lneN+Epz/R6mMXxRjpck4J0
	 Mlw+ReNgEcQh3gl5Kph/sa/WDP0XVRhoil/t75msJjRxCKksmpC6jV5Glcw1mZVe+n
	 x5Y9wQMG3t//Dpj4HBYeS5GWZeqa/c0Q4QjCGKxZNNN2usNYNu0WrPz+Iabi2qQYox
	 ltJXbSwZg3ucUWhlq52RC/8oeVLglNxNCSRK+kq/UgZGuU3CT+/66rxFHtuDhRW6a+
	 1Emth+CV2j4kFDA4HiAiJQPb59L/9zsx2rVtJo9UZMGd7hRGY2TZ35h0JbMGbTazON
	 hNRVPEDPU4uaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A84CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165588742.20565.16014314101850255834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c00fcec7bac8a402b1270f716ffe5650d49624f400a8d3901469a29e3e9b01b
Date: Wed, 21 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671655887
