Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A7BA21
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E083BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693285448;
	bh=4nfIxE+Rc8+zk3KvLc2NyoCamhgWXRyeRxI7UV5nCAQ=;
	h=To:Subject:From:Date:From;
	b=PFa0m00q8tJs2KjiPU5RQX5SKgTZ9HzRo8v1TapGDzYQZDtjxqd2fkf+/jRrLhsiX
	 QiLtYtbV1KvIPBlriM8w9jqb1Ter3LSe5xEm1A2127CIxFZy8Andy28pNvLBR8Jauw
	 FKXIErOdbr4MRciw7KNxjJgl+WM1G/tXbW4ChWmE1KJQblmqAvNocYEemTm+btSOMI
	 KRLk+oQSGo6V905eUAXKf7vaT8eIlumxf1ioMtU1egBJpRXzuGKNped3w3D9HEnbgk
	 85zB53N/f2brLpUGOTorYJycTQw5ytbaOTbAmH/lyOyIF/Qr/QKb0EuU5+c15T9eRf
	 5nEQ10SiR6SGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D7FC6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169328544878.21668.16324575577744704824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1227667e45edee22147d9c6d6283afbff42ffa93889d049589ed21609d177ba5
Date: Tue, 29 Aug 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693285448
