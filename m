Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8562F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 22:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBB9C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 22:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688249048;
	bh=mJzw89KFTMbl3kHTUacPS913fy0jXT34ziVmopM6pD8=;
	h=To:Subject:From:Date:From;
	b=ALk3EJYL6aivLbkQxdPaDOXkzr3o7eRjmoy5f1ZA97yyn9GnRFjIBrcJ0N/Jpe5gM
	 UG4qgyAlfbrclhlKkZRIVOqmV0Bgg9IZcMY3wjW7NqNL2S6h414Or9Rkv2VXZRrJ4h
	 7uAK62i/pZtvDYhSoKJY5zFIXIIH+M9io2nIqO84y/qmhXHkFWHwhYrS0BjfoC1fn5
	 GwO1J261WhNh0U+vOWLyPHFCEn9tjy+9X18mt17mkNHM04+5pQUSFXnD+w0UIXNOxJ
	 b0dtVlxXvLYJZyytN8mJn2YJl5CtCJUl4nY51zb4iAgvFp8oc6W2rFIbElcvS+V42g
	 l0kLw8f0T1KvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC4CEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 22:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168824904873.14039.11714288285321752382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1a6620e752d8904659f7f04651d394dc6d90472921e7e6450b864acf2e0538
Date: Sat, 01 Jul 2023 22:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688249048
