Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469D7A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7342C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693081448;
	bh=XczXLR6tnuebTMDJmeqBOEgCgWKnnnbOT8MdN6LO4u0=;
	h=To:Subject:From:Date:From;
	b=MgNSvxYSHutHxEqTn4bMYsynNy+WHZiG7b/O1bjgKXwVkzkpn6w4TzTtDFJjMmday
	 KcErMBDupJZAhxbLTad5936sz2yRJ/D3SXHFIwbOSbXLU4alDRbZ9tKoKg+nOSdbqy
	 hgvAi1KrrqUt0/WqQ7ZJm0V2yXwYDej2Xl+/5TGT9QNNmP+B9X1MXNluh+op5bSe/z
	 KpxNab5a3aM4GSOWdNHwOIKcKYvs9lJj19Vl37Tq2jrGL5CT7MdkrFN7cQqM4wxFrW
	 AdbZhjUZ2MvX8TlTKQDlXC/MUdy0bf2uxMMpS+dIzc/FHVkTMp7KoByz62S9uOu65M
	 vcLJ0rXwL49gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D58C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169308144867.7736.16012385389025915190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48f612dcffffe1800aa0b76c3aa20f00c3ca3605cbf2b9218b95a34b86833e3
Date: Sat, 26 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693081448
