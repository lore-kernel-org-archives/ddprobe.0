Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D595A46B3
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74306C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670797887;
	bh=hY2yI/stMe2cdzHaVF82UmwaUIhU+Q5AopK74mZX58Y=;
	h=To:Subject:From:Date:From;
	b=jgv4aSaML7F2l4TZvVOujl7z1gGRcFaMS9Ya5SZ9fqL6B5N1o8GTqJM7++yNlL8+Q
	 GDIihBzfqwGtVSSWLfVUZeaq+a5KaGxzoKo2UZu3hjzuFx94YGkG0bdwpJ7fnJp9xB
	 ri+dlL79wdtow62OkCtiTTUWIQfm4iCf7H4d1JlQMgP4G5GOHtDaWYaKuAc+JQm3fF
	 YfTHckVnX/4Ycv8KUuTY+6rVhpL3mntC5Os6jxGy+Dyc2iIOV9VGhQtG26IhbRUbx0
	 V+vPflNdZ0xzfb+9j0mu89Iw5YiW+NtTQ9B5JrMY7ASC7/0tKYM2gnShWIhxK+s8ny
	 NJd1XKOBiWf1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D75FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079788737.352.2591421007317240905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c4e5f863ba0bd66c764c7148a196c234b938cce8efe3d1c0ac40887fc8cbf0
Date: Sun, 11 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670797887
