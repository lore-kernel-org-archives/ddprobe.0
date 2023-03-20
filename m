Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E0AA2D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 01:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2C4FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679274906;
	bh=PRDgzM6kVm4tGItFLc3WUPqYl359/ptXtFKs5nKWH1E=;
	h=To:Subject:From:Date:From;
	b=JfoITZbKVQky8EYIeUnFxgX7kmcbfiw/pHp2oedzLjuNU4fNgYca8ySA22PT8LRXx
	 SJk7WBqEWwIp0lY5PMnPSePIu/DRZ2SNRYX1PltTBtRB45nC/a3YKYrpGwqadTcsl+
	 MmZ6k5WkywXtXKSvg92qdiqzVmHwuxfyfNd0pJWmUztcd2WXqzK7QH8sKpYe4+VE9H
	 CjlKmwpDYkX/OsKFB+rKjQ3EtkHai/pM0kPIjr0pvFpbXb9eTsDtCyKmSeNqxuKih0
	 TUCe4FqJbJAD5h+CxF27QWMncQPXAEAR9dXNRStI7DtuNzxw3k6iza3Sj/vWnWB3Zo
	 ZRDKNr31AyVmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA42C6FD1F
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 01:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167927490577.20062.16418940238268195047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416202d30e160710ce3ba1e24d1759aec2ab6103c831e4cb309b85f666da80ce
Date: Mon, 20 Mar 2023 01:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679274905
