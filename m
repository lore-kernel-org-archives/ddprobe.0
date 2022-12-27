Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EAD362C
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8BFC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672105287;
	bh=jD2EHaWjH9FqoLWZj+ZgaOi6M/XbCiAxisXeTUyfB+o=;
	h=To:Subject:From:Date:From;
	b=oj8+zd85LcGd5D7K8pv20gH+5HculQk+weOqby3+gZo8ydcMjOzMI1oRuKygozHCJ
	 AyY40GDM8ourfTijrm/QgcVutLZT5iBx0euuOA3qDvM+j7P0MJtqbdRZnwc520/tUn
	 IHoD5+GWPrZ53qKEeHYGDqx6e83/fQMxEzFgzSSyZ+FjARgG/hGk8Z/AhhUICB9Bky
	 XkSPhRLEBQrzh2FDdJGDSHmMCHSrqfyi+sXcOu3saYNUXahIOWqhNWIltVGKw1FHcs
	 7dp5sVvoAL41eWDzyJsf/e7OQFqLDEZZbaAlgS/9wdUxfl7VhJJ9/glMXZvKZI62mG
	 U/s8KwwRg0YSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80A4AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210528748.30211.12025404461992242573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0fab446c36efe4d6c9500edc6b16c9b8178564574ebeee5bbd25a9a96fd85f
Date: Tue, 27 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672105287
