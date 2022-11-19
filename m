Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C896C381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7549AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668859254;
	bh=w8rjVYnKGKJt8Q7ZXq0OeYAKS/vxVTreaG3xKIQrRG4=;
	h=To:Subject:From:Date:From;
	b=Zaku80wV7pfuN2mjqU2PQHOTaiWVUF8I9wdP75rzbiHo7WoG8BcqhIox1v8LXf7W4
	 /QIcBMUcKYwRTPLoY50RCWlYb3LolO35TPb2oY951ETEkjHL4QQ2t28vqnY4ZTVl6f
	 H2uyZM/7dLxQj3C8sqSL3NN/CwbsjqXRt09aolA/v0Gb1vwE92DJGWn8VIQSWkS94Q
	 H5VtGvwm3QphxKO/JBB6w+ub9tow+oBbWj7yRWU1juPePgVL9iXnS+RiaQTLw7ZBRl
	 gh/CYiVCoF8SV8t4FI57GZgfMymLtvpzDS4HxElcvf9Ti2THgHIKF2FXeYLN8juykT
	 z4Y0AZ9cn+5Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8F7C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885925434.26111.1726693876454755532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c898b20536e76533a631cf76d1a8e726092c7aeab1b76c60d1ff84c1b293fa1
Date: Sat, 19 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668859254
