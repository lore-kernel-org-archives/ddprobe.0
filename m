Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF06441A
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75DB5C433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661537452;
	bh=BuEAsREBPYkJ/+CZlO63RwT3wCPEYXOTW4o2Cy2IOKg=;
	h=To:Subject:From:Date:From;
	b=oRQ4d6yay8rBu+xtExackA/XiyNG7Q0t63KyFNS0qrO3bUi2bXrJDseMJrYNmAhkH
	 LveFtojrk/uct0WLLUymfiML6I3UkG9Wrs4hpXOa3nDvP4blfxgMo/D6hi4Q7tMNpE
	 gfG0A7O5ORRgL16Fzd3gs16ZYc92p2fJye2NN7jqJdFTc+p0iWAICIbTMyHVxvCjdE
	 gF2hivfphdj0hE/VGXtnSk9Qob95yjfvZd1qmLW1QXkbcvulX23GQmgoT95ASiEp7M
	 oFjw3D6Ai+gVQ/0bxhEDW5kl/l4/DVSOWkXFN3C7VkJ/SKuglvBYt4EL5CU/yxR5cm
	 DiTFYFYlDO9Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC35ECAAA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 18:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153745237.19943.1278459091670424557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea20f27e7ab1dad33376505a002a8928b758945dec544fc6a6096d42548842fa
Date: Fri, 26 Aug 2022 18:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661537452
