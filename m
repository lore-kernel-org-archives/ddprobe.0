Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD43AA40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDCCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662794453;
	bh=H8wLN1+ZtQqt1UUBFQijyNVQC4hQb39uOAiUSAdSYtg=;
	h=To:Subject:From:Date:From;
	b=drMqVVEh8gg6E/Op/zKNr1wQKVRMt500gyXMKnwbI/jfMalbdmmu16nCxPK+ZmvVg
	 ykbZCy7Fk96EyKobyVpasuj+LV6FE1DZJG1MD2tnslAqy5uUxBKeAo2wbE3hTwPe75
	 zUyDU0fgJav7V4sXGEMAMK0i7KF9xFHfcYC6PqCTnz2TasDmgT6pVa6h4YCKxPr0S9
	 2htzO87HHK5vioZmWPrdthTWkUZ6A7zZ8vcPeAUy4gkjYHc8biZ4dlMVoyomh8tmu5
	 dKV6/d15VkVaZNWSJOrP/ZWw7LNoU0v8Wj+nUnDkqh86Saaduim04lfwN+iWcue5tb
	 7CUkS3tIu9GUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51559ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279445331.24511.15497558623406912540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8787f94986dc03168a15c981791c7b598a543dc04baa5f2e6bcc2005e74c5f42
Date: Sat, 10 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662794453
