Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5768C389
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2AD2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685159286;
	bh=tuaQMDvB3MOJdtnEBBzim2llsmxI+huh/mYwClZIKAo=;
	h=To:Subject:From:Date:From;
	b=XgZvpk8/PMj3y3qRfv1xvJOzYCHc9U5piWHZGQbDwLsGiXz3vwJH1v1KsfnH0Gat+
	 Me9bWB1ys9YOeAFTfjeT+f3Y8zaK/sUVtMdPfc25Wqdjep0JmkcpnxI5+Z6/3v7IPv
	 h93Zng7PhT6KVnx8mNUxoYSAWUSAHuMLxbg1eVvY8CmhnjtmS6C+HB0HLtaYc+G0Vx
	 RlicM8BpIoRdxJZZhfi6nl2qIU1EfAYNPdiw130czdxTR9OXcsUy7VvdE4LfOMKMKb
	 3Oa4+9WuYcdpBNgy757QUjr8EhEIJa7fqUhemjymc6mQ8aONYJdJDZkPqzu+wwAyas
	 hnwdyVPr7mOqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE09C77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168515928582.24555.4594451072793950153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc38d87634d0bf00bf569ec065a1abed234792c9c5fb96bdee25bd4f22a96fd4
Date: Sat, 27 May 2023 03:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685159285
