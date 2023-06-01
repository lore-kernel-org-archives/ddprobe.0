Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE641101
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 02:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE0B7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 02:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685585046;
	bh=a5dqWVBlg4XmyI0gVqEd4R5ASbVsKqwskp3ZnOij7Cc=;
	h=To:Subject:From:Date:From;
	b=a4xr/Csud41JH48gb5YCFam9QyilnNdIZM19VIW8qAa4f1chNx2J6jp613uk/wAud
	 q3muSBPpsXF/dfEoaagFU2br3B5rq43Q0SxniVCC8Mz1cZhaAioKc6o4/U7FI4hcpv
	 JeqaYSvhhJLoJXl2OGXQYMUqz4IYDiMtu0P4Zb3zTz2t715ire+/a3BAFJtsMYWoBX
	 +drqWDZ5Kh+sflJWgDOWz2cythrteEgY1Yhl3STrWbwAxJHxb2BCQ6sMtjlr23lADF
	 l+VwC2nfE4EPa0AI65LByyWQBVGk4ilSx8jxLvqrSS3wjoiEptOTfyTZ9EcZ+9ckOJ
	 iq8plpIwMLlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE97C77B73
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 02:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168558504577.9772.4953992279344852923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3beed432ad19fdee10c4657118fb877a464830ad2ab58ce533ebff8c4d730ed
Date: Thu, 01 Jun 2023 02:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685585045
