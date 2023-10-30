Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3608A154BA
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPUCiop3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D47CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698689296;
	bh=EXninPx7JOBVD2+WHqoE17Ask0mYk/turzpu5xbLXn0=;
	h=To:Subject:From:Date:From;
	b=IPUCiop3qhMPAYzrZwBVe8HsLQNbpl5c6yKExwph/dDWU8m5QhIGsCEgjf9ID45bx
	 1XQf/lLGY/+mPBuAkkVg1zFT/DO4jk9S6YD5yFjqTYkhyMeHlL5Wj4zKHFv3Vs8UAR
	 /s0+RqaDRUTsyRiQ82kU/keOFRWqr3O0S9sFXcXq01RJDtG3DWcZddrb3oZ1y/zjxG
	 mkc03HR4wx3OHjsyh7k9JjEtsZ9sY6EqicDlgeeIB8zmYSkH5+0WGxBc2RQkQEc/WT
	 MvvF0cZ9UUg7gpJx7o4CTPax0T/uWSGwRkiZo3IfxBDmWKWjVJ00b4pdZVb5SMub1/
	 g9d40WH/krcNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F54BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169868929642.31865.13826412717206365568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2321c5973520d1c8e051354ee5573255381c4dc4bd19bbb921859ab13703011b
Date: Mon, 30 Oct 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698689296
