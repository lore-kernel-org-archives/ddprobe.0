Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CC433F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70386C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665093653;
	bh=eDN9Tzmx+CEgq0C/UNkOc9OUqw0sgIzZ1Fo1uKD1zLw=;
	h=To:Subject:From:Date:From;
	b=OKj7xPQlCpGRSjXw+C3pPqxnsSnQJveK4rdg6vFZXcUyF9fGIrO6aiGKky72B9EyG
	 kk+/HqDG08sivmtnYCX3GvU2SDR74ElGYgOD3KuGuXPJXmteYSO1NnDYIHWe4KRAJL
	 PN8eucrd9xRXHBHgdNxpEgGvSUTE0SSNL1djhFoi5ZAvULnHnPm5FfagLsjCyEQIUu
	 3lPk3fvfaknim5mEIeI+XsBezN2gh+MV9BOiOVTl9xWoYe0o14/xlN85x0MSJLWjcQ
	 oFJPxT76zkNyHcqEUsTRWe9FqNaIWpVL+S+WUmOAlRMSkI6QzqSK2ujvSaI5rico+7
	 L/T7pSAllOT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FBFC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166509365334.25051.242085322760980897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bc441e953e9e8ce4fac938ea2a42558ad5b1cd7e1838840155e455d85750e8
Date: Thu, 06 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665093653
