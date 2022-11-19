Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CB57C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFD9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668835854;
	bh=c89dGy9EYAwd5qXeuq9jof0HdV2+8QCa0SluMxvyCX0=;
	h=To:Subject:From:Date:From;
	b=ZrxxC12i9ODY0bgao45AlJEK+P4RKvWljev8vYBOGa+7igHd2BW1i/EdmCl6TaMPT
	 rcsQbccpMy/CVCqqwaUX7PSfwpyymLI6FLuCOSRmBqlmvpwJ+ebqKLBkSlMAflw1gB
	 xjMltVlBzGK6BLYT1+sYxKIfZUGX+9d1ManRxXrztUhmXrwNHW22FOhkFWlBgueoeb
	 IxePjuB7FvD1bIwJU2aQDs/hk8FMWUaxUIpVDohNhD85ipoSkikN/slxj5W5izsB2N
	 /S38O0Ye8tWZKjFriU80cnCDKXjd58dru/lH4o68YtyBsvrX0WH+S6Pz7ki5yE61Ft
	 y+Z/15k3tYz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0F9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883585436.19582.8365992141260524783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c81eef76fc06eda192105e4f86c81ab38949ddc5cfdfae0483632787ac12700
Date: Sat, 19 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668835854
