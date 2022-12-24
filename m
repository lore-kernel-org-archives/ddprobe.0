Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E998620F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E44C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671903687;
	bh=72MrTjLh0p6OE8nzogq4ad77AU/+SVU85UQPm9i3jn4=;
	h=To:Subject:From:Date:From;
	b=jf+YcddmXGq81uTr3Zq6V0kMdiP5Uy+yAr+rJgae73Fo4MJV/b32xSiWpaY2mM/6V
	 W0+I7Gjdh3UwuZgdNf0anUCKQAUWAJv7e1NvkQGU6kPZAlC/7t631EnPF5v4BnW7WJ
	 rwNn1CfnKRy6zjV/vrUJpnVUbaLaIdcmzVxfg+FkynEngZbDnmq5/uK+DXwXBfE8md
	 8aGJvHmdaX0l6lUCUW8YyTYL7MAXEgEK0J1T3uLfEQG6vL7iMH0yNghraU+3tTdFPN
	 xf2yJMMfa3viVPJ/k6YRAkq/gYYwx85i1IizDGtAtrh/XCUNUxQYl0JAkPVNuSX9e/
	 wQoGVFDzIENdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F39C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190368739.9075.2160549231043904245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd189d5a265193778543fe5c5c292e9e9df253c9789f4db909e0f861d07e54ae
Date: Sat, 24 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671903687
