Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDCD6FB8
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 21:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 033D5C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 21:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684444566;
	bh=QRAGto6MTygDWP03WCSKhPFh6OMQ3p3QmvwL0AWHUV8=;
	h=To:Subject:From:Date:From;
	b=s/AQzoLTQIqNb6oEEL1+TgssjVSdX1AB8rCjVxl/WxLkegJHD7/bNnCkNv0kj34Fj
	 USOj+m07o7kbTTeuSXjMc1C1J/yi4gLJ8STYCARjE19vNSH0LgXL7genB7RJ9ywz8o
	 diCoLOP/UvNE37C0hn9wlyUw32mrmuL1TIi5uraqUhN55YDWVSgqdrUwSpHuNbIDUC
	 3Isl1dKSYQC134xMZvn7t2TWmiR8YboB0dO01SncSSIiubevzSGnwYE/98npTSOeFe
	 IVBY6GfrGmCsmVB+Naq/GwhKpG/3V+XdxNADfIKfsO5GXwMaCu6U4RTzOe0O0iJ478
	 3QMqG/sGeBWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D72C5C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 21:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168444456587.28496.14961907415837317758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e6d7cd2a2873e2083d521c8642b847073f959470b68a9aed0e47378e37aa08f
Date: Thu, 18 May 2023 21:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684444565
