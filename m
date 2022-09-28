Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA919A40
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C918C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664353253;
	bh=hevlADBBFLAq9lrss2bTYj94dZtakbZB1XdJE2zPR/E=;
	h=To:Subject:From:Date:From;
	b=hszPRWztkJdh+YgeZErtXcTBno4RPXbRAhSrDznOuzRxVcVsDIe/f53YIaS2tdspj
	 7O/0LUdJthcIa5MRfyvrPS67HO3XF35rcs35/2++9pi4oa+cyMG+XamFQR0e2jYpuP
	 6urYQQiHJPVSKlVAsb1fOndi0KDEtjIcWF2FNcavCYPBH+1gCesS5X0wI10xTBc+6W
	 ppTQgJbBxKS1htP/t7x8ZPG5FyUWQ0XYLgPUQOnCD+VsTHxlfnkA99g+frjve03ewF
	 TrrXZRaGcqSLkNQwIQ/5qa+mVe0dx9QqZqGAa58FA5KkA8OCBnnjI3QtQOjzpK7O8I
	 r6h59+gmGBF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E02C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166435325334.27285.5240785042209216156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65910fb11aa66028221f6fd5f8772ea8ff6a9c7f97c5ddaa2257898b7fc61d0e
Date: Wed, 28 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664353253
