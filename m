Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BCD15C4
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E3CC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662410453;
	bh=M8qQP/Kcv5/tjzIhhf7xFmyNRNlqw8YVHJjhESKIiZA=;
	h=To:Subject:From:Date:From;
	b=FYCoaFQrp11QYy1fWh5DiJk0azzR3bpIN4U9TarwEDvXyfAAPEZI6JwMK35yj1lyT
	 m7YAFRosIeCByncfL4AEL/fjAdTM3snTAveylhrItA+ttok19h9zC2f3cM58BUgRo5
	 aRu1ZMNxQaBL8cn6+udeJLfqT16H4zP5u3g/TTCe6V9S23rCI6mrztSG9xsTISS+ON
	 RRJ+evPkQ+jkIRqv9rvG6UnpaQXD8hKq+ysATk/MPrBZLY8OhLRLrBz8+LW0wIoeaJ
	 8ZliAGANmASaKAj8MwpjI+jUOAwblsR01mYFcj4d6uAkHvKnKP8CbvsL0CBIFLKc3B
	 5tOvo/F63iZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DF9ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241045333.16723.272941753058304803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d74b0aae490d0739497b68d478e0b53913180ac3fd7963e3641336cc94064df
Date: Mon, 05 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662410453
