Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F058F5D
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713B7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669652454;
	bh=MOzcjYF2XjNvZn/o5c0e+4QjYgwSef61aimJAWE+XAw=;
	h=To:Subject:From:Date:From;
	b=LW8l0yXKivntShiDCI7llgPDZ7C4MLibpn5GkGOgr214UsHUQ2mcwOWHeuizo+IiU
	 CfngHJ7C4CYhukkQL0PQHftRDsXMJ8lFLmhRGjdVG7kJnFHa23xayUrUFOzne5kRKK
	 1IZs7M3NVF+5K3pTh6I1iVGRgCoEqePyJ40r4GgsendAkbKuPz62f2QwvbXuznllE/
	 n1/k7KL+UkfeBc0j8654c8NFmqP8BNduG8NbNw4hi6TBeGjWwoNrnI/RQLG1GS/Nql
	 IwVYLVCwpzeg1btSmX+JOuTmPqBbwjlur5JEAEGqvNOKYD10cmw3ZlsZMmRIqN6Xte
	 MjVj/CXnOqw0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5942BC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965245435.2331.9035904341211536419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25835c5d3bfdc52e44a9bc56138466867a98bf71b63be904d318e75832dbea6a
Date: Mon, 28 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669652454
