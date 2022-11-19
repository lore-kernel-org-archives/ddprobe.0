Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A012F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755B1C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668883254;
	bh=xZrpVd7UzL/jewl6WUKC9rgxCDNMH48a0kO1HbnoJfs=;
	h=To:Subject:From:Date:From;
	b=fUUIk2dP8yt/GUU+u6y8opbheKy+AUUGMAc/fgzoyhNyT4kMM13bQkeDCf+27/FQt
	 761IdQjC6X5WkTLyErTNKDel/RJiYGWYib0iUexCAOh6vnqLjhfbiWEHbT+7+k2zHr
	 bb6VuVbFYgG27iFOjLAaMuKuZE9VkdyC4ZSSHyot8DWsT6UZPFS280WQeEJkSFeciv
	 RgCxcF7g1bHTHrWNbRIU2zD7eY+P+ZeZ28YSIor2oFeDpqryvXssemQYEoNagoAggh
	 ChHwqD0jCGRsYAxaXhS2lRURtlc58ViV4emKHgTv/7Lgzzpp8Z7A5Kfkaniyvxu7Me
	 CXUhQ1s8mYYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BECFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888325435.27651.4717317242418811454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d39f268f94dc0a6b1893eedce8357ce6ef1cdb288b726a71ebe38ca30594a3
Date: Sat, 19 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668883254
