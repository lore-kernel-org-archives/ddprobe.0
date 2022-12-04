Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFDE82F47
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C27CC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670193654;
	bh=OM7m+zuhCdYJ9koSK8FpizpveRpXMjX6MaLWC7Gis1o=;
	h=To:Subject:From:Date:From;
	b=jn32Qt8vlPgExTNDjHjLPqhBsZ7hcXgITeLb4rJg7jarqG57BWh67PVGjjv6Y6+wy
	 +Tb+O9wB8beLOm/vIYTlWu8MAwEMr1G9vLwukvk55fYkpjGkysTqIcnLuBb9foQaDW
	 wcz4Wd+hTIxS7jlQChIHDBDpSX1YrCIQxeGyQdj8tNkn0Bxw+a6ZM3sJMFU8rStvio
	 qBsZQ+gEUWkegO7kdbTR6GkMA7W/EXsbCv/6TmGYQEQIhV6YXE0luOmcNiH3QcP6+8
	 obaIg2QlBK0HHkKaZBXjp32KNv3+vBSa5hH3pmJ8cXrASJoKNHLmpdc0B+NhFp7M5a
	 NraY/sUG6OzkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E360C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167019365431.20645.416731462746974276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed32c7bba75eb80e2329fabf463e98ea4f0dbb85e1da9ac6ba516545900913e
Date: Sun, 04 Dec 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670193654
