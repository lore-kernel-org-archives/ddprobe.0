Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9766624133
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 23:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 23:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686009125;
	bh=7EGfzvZDpq3qtC4aVffxk45PBsXD9qv3J9/CjIPpfLM=;
	h=To:Subject:From:Date:From;
	b=blMzeoPBct4RQf2PYAaRhAUWBohJFRdxX7RJXuP1DgfPzleZfnkngcB2G0SUrLm61
	 k5zD1MluRJhmuY4fZYq0ZXl3Gj+oaTwjVhlye52LvYtcW8gqIPKIHOTl5c9cqY3saV
	 UgMAboItdH0wvUPJsYUNTkhqCd/9M967AKa9f/YwxzwXIfcs8eR0WXFt6C25tFrFtp
	 FqnT5MwKo/pKZkOAsvSzXLCeHbSkQNSgfrJsDGq3yaB/eo8dCH59UecnMYLl/NEfrI
	 h5Qcq5FA3ty/0E+sheuJr/2fUN3khA4v+R/I4kqYYMGJPWbhODHj7sUfMVor7QNISj
	 rF2gxbQ4d0qHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8826C7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 23:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168600912574.4649.17810490560265964283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84493acc532687ac68ff163a8e94dede33c6c0a9156cf3c5510c2272f3c91e4d
Date: Mon, 05 Jun 2023 23:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686009125
