Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD52EA23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77117C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668235854;
	bh=eq/XHnnGLr9HHqJdgr9rhuiZul13DcfjUj+eel8czmQ=;
	h=To:Subject:From:Date:From;
	b=NnqKOUGJ7pmzEad/yvQ9ksa5Nwy922NNA0/wvZ8M/V3M9sTPJsIZfyLVO81j9RRB3
	 qgbajtcWn4u0kDxjhZxz3kp8XTX+/94WNHnYsUjlD3BjNqrwNHxUhZwSlZWcGLHoCu
	 tMvXxrf1ZlJWRj4XSXHe/C6DGzmN857E/gCU/5JsZ8Xj7Rmaj6dkAoc8uRdzRLta0A
	 4nZzb14uz/4afukyyCmg0wEt+k/aTbSS7WX1b02yQusvcPmQlctfhjkuWXNVulhcvO
	 Xwrhwxfz9qzPrrhoRXf2c3odHM1CO/YIpIkRvUqXylZ3GiPsncm15WANaTwlKcl4rH
	 GBsRII0yzd8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58192C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823585434.25695.2257621288958209339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7d5b091b2943f1a0f360d5e30b4e51d8f0b325472f1854804bc0a1d1b528a8
Date: Sat, 12 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668235854
