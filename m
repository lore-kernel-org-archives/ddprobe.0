Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870DC211F
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2739BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682261466;
	bh=v5NcWf5TOjVghRa+9/iOsFclrd9HPQK+AdhEL01inRU=;
	h=To:Subject:From:Date:From;
	b=EELnTa3I0J4GXP4dR/x2V9U8k4Wg6yjAAIKJYwl6dQR6nUIe2zGw+WLCSPmwQ13LE
	 BUEDnxJeNXBri85VuPYfBY2r6gRQEp2SKz+CGVN3bq5WdIHM5QNmmoBmrfSxHhIBJF
	 EcYolIGxQU7jp04zmbd3a3LyVyNgzQ4P4Q/x8lOT8X2Z/bBwC1zwD53bfeB8TzNxic
	 WOIrvEzA+Q7/N1mG2i5GDIk706NpxhQ42VmtGKJK8Ix6Yi4+oRrl7MojvDTN4xnRia
	 M2YXRHzbd21ncao0szDu6xRBbfOuKkX0vJCHHi6fZ/nFVn+bvw9E81l2zikAbKAxdp
	 aD+l2hB6XqJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3FA7C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 14:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168226146598.9005.6968122027082725233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb2f45bdb83f64fe77dc2cd8a67ffcbecb6f954472b079c5d1c5fcf7eb98cb1
Date: Sun, 23 Apr 2023 14:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682261465
