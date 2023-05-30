Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C892A9D6
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 18:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 003F7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 18:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685469786;
	bh=ijAkuwsuXbIubXQgzXTB/gZLuB3pl5+DxVgRCQQG0WU=;
	h=To:Subject:From:Date:From;
	b=ahptqrc/ld7SrkwCdNqaFhLprd4iULBzm6resD1ZNcjb5j4ttCMqwT5SvvI+d3rgu
	 bw1e+SzRg3VcFwaGpP4NcXevZM+4dr9BrpSWtcDWcpJHPGZlqj0LBJtQ32T5mGcnSD
	 jVOBvjegP+oICqiU9DEiqCai5u4YC8xgYlA6izgV/0PkxqPdyw/UtxRWOm2HhMlhsG
	 OhQeN4ow4XZcVCQOfzSdVeRFlcVy/RwTbc6/urP7ykRV5SWTGp93T4fQb7uJuyNqus
	 0MPdNGXFyUESqgAwXO+/pn5Bcd/1FSJh364Rm2zeoWu3GmGLSZV0FgS8IFeEM88fVb
	 FDwcPFFDCvCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5399C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 18:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168546978579.16708.4069829039700577986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56255c86e8069ba5f7023eb8d4aa6add9ad2182a26895371b1248f5f06ae1a8
Date: Tue, 30 May 2023 18:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685469785
