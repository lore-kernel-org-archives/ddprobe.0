Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24F05CBC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89BF5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670946087;
	bh=vXu+xY7PELVbvEB5Tuv+1VrvjC7kObHUJtjFy++ZBsg=;
	h=To:Subject:From:Date:From;
	b=JTY6IrvBBsboHvkDrjBXp05CeU64foBt8dK0PjG8/G3SQjgV+G+IWJuc7+mnidtQK
	 v7mLA0uSeoGQUL/5yyYa8z1aD1kZSh7IywHPP7fzNn7oahmitWlE88CyadlfN7aBEn
	 xc3Qwd65w/2w0+IOhTUNXzjmiE4/txG35LSIn96WATo+KQ0Y0G2LSpqsI6z3B7dmrL
	 01We2pQ3yZ6wWnhi0YHDh/QFBG/9yIqgJYuzYD6THyz9fP3j+lgn+eWs6L5qJ6A4cW
	 U0/yKVyT+DVnX4EfMLNbRKwuPKBD5DeGUIGGNUjIgwgGAnABpW2GbNqfP0tcGFgUid
	 TOxJv3H+dv9Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6953FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094608741.31860.3284355616768959425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f335d0b605198aa9e9f997323b90e866a05d52d8118a1ab1361217ca5de1bf4c
Date: Tue, 13 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670946087
