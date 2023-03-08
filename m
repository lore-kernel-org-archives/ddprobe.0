Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE8C657
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 20:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDB2C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 20:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678308065;
	bh=ZtO96JnZsQyijtrS9FVJoul/KQOyoUb2DWn+veeMseY=;
	h=To:Subject:From:Date:From;
	b=kFlUZecwmoLIBjGZsXhJrMSsz7Pi6y5eVgk4a2yBVQqv6va6Zpdw16NYgM5fIewlt
	 srsQk8zyL8O8tGDeMwowR+NX1Uqf/JOH3WC0kjkGI6JBSsxwRfi2SVt5KwsyG9P2bg
	 SepzFQsBjcGNzCA8qWCVkam2nL8ARnqJ97MFWtCvJ5Kc7OAjWGkPwSGBKJNyR7ZFyS
	 Umkjphil4TGWjOjN9KV5cj65l/3J6Ff4QKn5AOdomjNbvNXe9IIM7jcBXnFXVh5aXU
	 ecSbTNtQHrjP5D2pWqstd21gvc+8c94FPPLY7EecgjhOe6q/Om57FGPR6bVsLMIrv9
	 jt7oy42hju/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0361C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 20:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167830806577.30348.6181514332957443255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6816d49952248d8ed2cbb2e3969ec0bd1bee6df187b447b504780766c9d2b16
Date: Wed, 08 Mar 2023 20:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678308065
