Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E2B7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D615C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664055053;
	bh=2Mt40iYXDH1WH9bq0ZaVDhx6zLOBZQdnKP1re2+oF60=;
	h=To:Subject:From:Date:From;
	b=mdc4j6ZHywVl/dFZqDJtSR7yjhWHXXH78WlOIj3O1Gx4sxSU0gkfZ2anj+oyIIYt4
	 Un1yphfxRfETUIXRMmkvsx67KRFA0DjdNJNuQJxLg+D1uv9S+dP7rcJcjw4708MQfD
	 Ha+GJS6J//b6nvpWCrVFCZ/hV/OT2d82QdjY4XPzwH3zdE2xBrn9kPIMbSchsHWXh+
	 8hMhA99J/9+PzwNiK2QwZIMSA1inuRrp/BZTpQqR2F7SExgEky7l4xcaECnhF/3TRv
	 vNRS0VmtuhwqwvTHVXGhBpoSjIfjRcu0liI6htmT5GvwAUvJ6h354g4mdWslPj199K
	 tFXIMWkdOvYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E76C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405505332.9377.2590005094925529026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22e9479d9298088612e1f94dffbeff3e125cc5b4b08cd195a9d1ff77b72027a
Date: Sat, 24 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664055053
