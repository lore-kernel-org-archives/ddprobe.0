Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BC61FD9
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70618C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665381053;
	bh=e6R2yAIkQENsPlVD1l2abyRsXFvfYRxQjJeutLUo5mE=;
	h=To:Subject:From:Date:From;
	b=SgzBWo6O4Wxx61UiNsmaIeYk0av04FeD7I3/GzN1+JTAFrHhvjlRvI6iLidUYgCLV
	 tUBg0qKMqYYIA2H334OVNt4Js5bAYMD6VtsGZRQ0aMp8Uir6dn3bByn62g3NWwv1ea
	 VYg6rGZZhM/802pn/vlItQnpwnEiql5GDXvJhpgQ3C8ryVIIMNwbqAJvksXdhqSOnT
	 8pfPuWb72KJiHqrtvdjMBdrZtGXOGSAHQa7XqhpBmCoXpKrZmvMD5c8YW6xBZj9h0D
	 Qn65P1xXWbXXVQV/CsD1m/7R8j9LVjLZu5vvQjrO+IL2Bg/zhLucpZ6Da2X/v2lAYL
	 Ng2i0sG5KP4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557ABC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538105334.23852.1939869191851894273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94957126a9a897a46f0671c6c20cb2a5881f8cfe75e428e3d1a73732e16b25c4
Date: Mon, 10 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665381053
