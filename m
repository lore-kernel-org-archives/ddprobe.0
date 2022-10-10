Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84171FAB
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6891BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665391253;
	bh=0FeHprWFHl1o3KUESpY3ulS3wOLa5qUkjDcHa/QB2Mg=;
	h=To:Subject:From:Date:From;
	b=u//bTemXS1XneLJgC65sVCPY/VbIRirfb7D/2LA2rtX/gM8eFU9XBcRNRwIJoVOab
	 z5RjI2zOLt/hxOa4NKrVG/GGW+eKSgZK3E3pWGDWEmD0lZfwmh+fUce1IngG1NrDkl
	 pdC21JrU/PkaLaUmRASIoC8LTbSp6yW9JjRVC8OikJJkdIEWThWQLdBo/4bNcLiTb4
	 DKlPMBhjKojQX+ZzY1zefvXyTqAeTF41qDi3qqi5372GalwPL6kPwXfbEfxNWVqwo2
	 Ewh5AQqLse5VkkiKxSRxanQyN96Le7yo7vDC5asbadGe8YlrX9kuoQZTv97O4YkiMM
	 0XL7PAC6m4PeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DEC4C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539125331.5838.13180591494828963780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d9542885dbe3d38c4db77e458287d9e6abe2a3cb9c21f4a6fba9056acc0205
Date: Mon, 10 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665391253
