Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562DB20EE
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F15BAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679742126;
	bh=5j/Qn8b95yRZ8kmFuBMHqvIfeLups0LoagjPtgKcVBE=;
	h=To:Subject:From:Date:From;
	b=Vu9DJ/XVdL4eJvKVGAqAPQpf5buPH3xjZE6Sx0q5CJKn1Y8Do6AI3V7nne9B2gxcP
	 tvqvjFG/d6SpxyDDL7o+i8116ZDNzWhjkjq90hpKkxRguSjjqim+E2eWFgPu0ASgC5
	 BiaX8Q03tgZBBYs1qo1ylIFuuGGHodSEzpC2ymBpw0vC5A5WiYqsafo8N7aVZdO2ma
	 LS4zgqpiUivqECXfSX6K5fJn+rmBcyNF5ZzgyU3hqAjzbwXTIWluN5CRpltcOhCOLp
	 1TqQZqJt9+JvaDqVIWWLvHOjNvA5btCRPpfVzv60x7r9Qr+Sd6n92Uu+7AmuIJvzf5
	 6UWQnctg3TfPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EC9C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167974212587.20082.10696244865800170450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb794ebb9b1930f8cf7e0e632d554a7e4a527a34460129c213ce970faffbcad6
Date: Sat, 25 Mar 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679742125
