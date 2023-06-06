Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F18E7E4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 23:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DA9C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 23:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686095525;
	bh=GSTBGuuSE/hg0YmxIL8PmdhEiVho3D7ATaqWAnqcD7I=;
	h=To:Subject:From:Date:From;
	b=YyU+ivC0PIRPsE7ws9i9hJOUr89UNNz6y4A8MZJoH9FO/McGDxji7Daehh6kdRx5+
	 3kKrJjIxgn8ff3m0niFT90R5cyNILJ1p7/Z0lNuouppJ7vb2lwywQdgSH6iB7xqQ1b
	 MZzBR9WmBJpv/rLVbEU0EQ4OcMkEysAH0NNHU1//p/SGANfndq93S5yvvGA3iT8pGN
	 Y+oE6Wu+sY/iPH1iB4hSt+F7KJM8pYG/1DI/I4CV93FDrd/IcjpNN8UzEWmB9kInoa
	 bLYSqiw8IoVYl9WfVrb18Qid/rcmjo6FzdimiGoMT5M7KY2V+SKgmKFQOK/dokF5PN
	 +8WUhVY/OS+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A29C7EE2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 23:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168609552574.11431.1198451566298353438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34332bf13e7e03c2bff49339dbb65a7014c5bdb81114e4e1ec857b4e7dfa0867
Date: Tue, 06 Jun 2023 23:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686095525
