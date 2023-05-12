Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B98F7F0
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC380C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683857706;
	bh=y4nkZVliVIiYjmddIwEILvnj34lw1jvEHo3an3ezdMc=;
	h=To:Subject:From:Date:From;
	b=RrjRQRIjh7X7S3OT445erLY2W1t76NFe9PdAmupvg+Fl2XSLrrj9Du8EPfgWlpIH/
	 sxIT/IHbDwr6KUPdqk2IiuIDmKSxhGhJlRYuosLcW6AjdcgxzEIfvl48xJMEBEo3sx
	 FT26X0e1DJbN6QkIncnB/e361ck+PP3MOIyYMUqpiHoSWpGeP/tSr9oBorhpk+pFBH
	 IO5JPUXMRkY+XunNcAakqhiYpZw53ooco1duzGp9jKr+UUvOtcB6zU0X1e08VpKamD
	 TGJI7mNxhmPkbvfzw/PZEUtsnewuvYXh4+BxG0p0nXrfkl1ItFuPVlhMRq8Wq9uA5J
	 /rHR7O3RhJBmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96DBC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 02:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168385770581.2056.13791884078699269548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7e42be10a1ca9174e8c1bc94a119a65b21b3fce4cf8a4423ffc78c14be25ab
Date: Fri, 12 May 2023 02:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683857705
