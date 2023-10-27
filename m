Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6DE800
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaPtCbu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86291C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698370096;
	bh=+6D6EhB1vB9MAqUnN6pIoI4PladW0HDv1rO+Yf5JqRk=;
	h=To:Subject:From:Date:From;
	b=XaPtCbu7qm9PZPVZP4dgXp84zAAWrbzEqILt7PJAZMcKMz3XjRyEZosxF+jHxFr/0
	 Y0OiWhzMJwgWj03Vyrd0CfT6aD5mxPITmDCFGuB6VX+iXxpATmO6DF6e8xpSpD5nT9
	 7ooxjKBtWHgTufeQue3FkcQWQtxh9fwK5eAyPhOXKAZr1XWi2i7j9Vk0DQ/coKb0iC
	 yyHqH5nJUUZ5HTSzpcGmYWtGCMsU5j29keOtFvADGYc8psWV33ZvNhEvPDjL/0zJK1
	 IL52PL7BIiNUAdDsjUhgXi5ox9S3ZQzbhhD1BZOvM7F4NhhfSITz4QhJhOQyROVnxu
	 4psQjV9zzUyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650B8C25B6B
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169837009639.2712.326464647838957278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b93cff80454bf2acc4d8796489acfb8b62f0c75be7ce3c258e805e2e1f8c44b
Date: Fri, 27 Oct 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698370096
