Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2347A28E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B974FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671880287;
	bh=M7lLoEoKNnFIuhJY5QNCqOUqg8fAHBCWCSRlX+MIfq4=;
	h=To:Subject:From:Date:From;
	b=bMe5ba5uoBfq0Z5EiZMM9TajTD4UZGfZJgbl4FV/DU73DXPQWNcVEbF7F8DrJEi4B
	 lrW2OPlafnRPZVMlvasN5XhYiUNGr+JG9SdxdyZdEclFnOtzSt8jmyYp4ke/H6XjKu
	 GgY5Cg2jMN1xdHdRXJXB6MuecZNLkb14IFKF3/xxiL+fTaNbjKZyatmGBJDB5aXKa9
	 3Idc3/4tPGPggqFYd6C6H90o7WBXTKh1oMrjvYzY7tZ6pqnwgoXiK6usOlbRF0So5w
	 jIHE2G6Fw64nCQYNHwFc2JZm9RuRb6v7gk1Ath8olZ1htvIDefBAtsAJwZ/c8wmrkd
	 eY4QYWWyQx9hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188028758.11287.16114424483353684886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6aad8dc069ee9d68f22d2feb01f5ef9ca6af7fd3248e8a1a5c1a5b7322a591
Date: Sat, 24 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671880287
