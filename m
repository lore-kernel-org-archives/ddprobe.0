Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C4E110B
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 00:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA041C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 00:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682470565;
	bh=SMOIfuWLsMhVyjiX/wo3Wvxn9C7+rq+TnjZAWwA/Bto=;
	h=To:Subject:From:Date:From;
	b=EeFAoyNY1riL1CjQ+YZ6Iv5S9t2gOF5ZXqS+541Jt8fcsTXENjM+Q3UHhgLxgOTwS
	 QgUCExURR3BRtBNPlTl/0ssfxpNf0NO+eby42V/c6rQYquB3fDWfKIU5ibKyuub2Qt
	 DAJitcI5yNv2NH++4xSUYTJtuqROzYz/TYPE6TiQ3CKNlecPQ7pwi4bsZvn6jugQ8K
	 mH1cgcD3yNZw7mrQ99tI4y1Dc4RJWchsAgF5YxEL6pS6rlT6lpc5zysxDZFrfj5B8L
	 WAc5AfUJHtgj16M7F2eL907uVZSW6OTalig3O0jh7ZWEYDaktvDh0UbePfBnYGD5zc
	 FLmCX8pswTAQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC730C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 00:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168247056574.12717.10062600875661801665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1993bfc22c8deefdbe58329d22bcc42270cb4a4599f09552fc6966104bd13b1a
Date: Wed, 26 Apr 2023 00:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682470565
