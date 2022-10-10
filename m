Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE8F1FD9
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A4CDC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665382853;
	bh=v4hf/y2ghBLgvFWPVddiiYgIxKHsyvI35QsrvQLheik=;
	h=To:Subject:From:Date:From;
	b=Yvj3a/8c6v5K2+sPb7foYPw7BnDF3eJUIpweS/2NXQTczESAyzFyg/5Uh54ElET9I
	 HKAjhjZaK5Rk1go7KbZoVMyT/HwbQomATiamYEEt1UbKiJo2YLME7wSJDH5eazjTme
	 79nfQ+ND30jq2k4KUO7kZRrk2/u+AkJYu+7bVfs8tdN/JGqJhXLAnkIJAWQH8S+YrX
	 aklnt9yMfKj36CGFNTmIOCcjCZg9cYwWnysxu5QYGoIDJ0dKxexf44YqOQHjZg9wsg
	 cCnPPb/d93LQB2xwnPQHGIzDsvrPiz66DyS/3JEDbaWHDNnf/jazJbw54edCygLIPn
	 exs/iY7Y4IhHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5135EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166538285332.19781.2686700878582460542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b5f8379b4d4cfa82317dadd0b7f853c850a4f848a9c53cd6b4d8b4ba8a2150a
Date: Mon, 10 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665382853
