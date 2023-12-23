Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6996AB6
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHwyuY+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FD6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703307496;
	bh=crvaNewJGQ9jHNX7jyG4aB1z7XNudLpplGtT7P6IQZ8=;
	h=To:Subject:From:Date:From;
	b=HHwyuY+e/hcqph/ngrATg7R3cyk72iDi4WTSYveARoI6vs0GB/USAOj9H1ukLFCgl
	 Sj0oAs+ERMx8Yf1dZPFPVptRHKpCFzP6olD7fb8xk2Fu4Df4nyo0E1dsnfftl57L5c
	 sYEScCu3KPAl2nn23tz8Lu0yntys70XqCYSKDS9lx72/KzZHkUyun3zD1r6e1qB+Os
	 WQpZyDGGOTcJdhvOu6nQwTqyDx1calbfy4rJqOvKnOVTG4Ve3JN2a9EZzHf++vnOJq
	 lZD65uBMx1oOhRkWpVsa6cP4+UuQyC6XfOkAXzh++ecCa7XlHsgE7eizr5ZzRQ//Yw
	 q0DEolR58MdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6757EC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170330749641.9303.4552642145160282403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2f58a2d6b030d0f32713ca03ff83dc185d3d56429fa97bd031abd830a336c8
Date: Sat, 23 Dec 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703307496
