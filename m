Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F86F17729
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 08:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B5BC433CC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689064029;
	bh=qB35UHWQxXh5eXu34x1e2z8/pJi65Enmy+0go7Xy54k=;
	h=To:Subject:From:Date:From;
	b=L7cDHRT+pZMNBGITrwH/X3b4/wq217+abb/+GvX7YfB9Bst62VSRMYVJgIOfZB08E
	 4ZTEzdTcjOM8kxQWgJ8Mf5r854WkkhweHRrDjZNJhAa66+P8haiu1CbMTmq6evd6qN
	 Jf6FnqS5eVJWDBvq8aAfPfMq5QOOspepgPj5QbSefUVXBENWvgICpjjT0FcjvSrBmI
	 8EA8+6JvCQywLPmxcTNeFJhM+k//IzYG1FtRSsAmsXdv42lmRLWw3qGzxsmS9DnbuF
	 XlDGQdIYg0f8UriHcNuKxB4Rbcp5BycK/PkbgdZhuNyAo21kdV344j029OlnJbRFna
	 qSym4Q5fiipjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82DDEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168906402874.21560.17667378872631584707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a31d199bf95334490c478c39af6e813147a58f805a28bfb623e7f29b71ee49
Date: Tue, 11 Jul 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689064028
