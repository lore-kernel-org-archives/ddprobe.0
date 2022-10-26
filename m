Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD117EA0
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CACC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666749053;
	bh=0AKFx1VACwSigY0FHiraV4OKp45CV7SrLXmvJXbp7UU=;
	h=To:Subject:From:Date:From;
	b=jcQzQucAa7km37mU/4tMOjO+6j40Y3e7HUYnD+zjpBhWxF1Li1VffktdZm04uju0X
	 7FWdMzVmz+Do58lOjTD/b73HG8KSK6e2KaznwUk8IwmU+lym/ey8U0ODhIMF0nEFbF
	 TxxBIDzQkvzDJNwYBfjonweURHEdBz+592BOAxG27c3EYR9AYgwDH1RQkSChPPObRm
	 YWCByQBubp4QCMg2UIoRoBBan/z5sPf+RUaRw3tjTZ+pbM+UanjKixJMeEI5IRAdc+
	 IhchN81mbIgyqRB9km0ndKN7N0K3gNdyHk87bjiXq14KAG59VJlH5tRh56biYYW4h8
	 UIpg5NqL+W2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 571CAC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674905334.19976.5286758267899940899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0ed0ab43b381398c9ab652e2171789c9ff95d85bfc7dfe81db76c183a447b3
Date: Wed, 26 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666749053
