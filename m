Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE27B28F6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C456C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671006687;
	bh=tm3futayBLC+XxMEsNluKmXer7UOU+wjhuyW8p13BHw=;
	h=To:Subject:From:Date:From;
	b=ah/MGJe26dgnvzgtE/AKawqRZcLjHWk2fw3rHmrHLflQkyRTWdys8N1GoGsy5jsOA
	 rTKbgD7ce7CvCqr2MeCtHK7yk4DNrn1FtgoF9EE1VLus+vhb5zUicCpIp8TaUVE0qI
	 YY0qgVofl1VbgU0VQ4yfrNq16WyfGMizU8bU3mg2iiO8R52MvF2Hr/Ng/OGJnrAJ5t
	 qOvZmzBiX1+aFyXZxpqFnALYQUYh7gc5nkbH3FBeLHRnG2JArlfF3mlJ5wOfmvwH9t
	 ZJI4UjW2v8lwOexQX8pBk+ZHAHiD+rEYbdDgIzwXzDYKuuJl7cVslahquGQllepxY9
	 rK8phQNThOkMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63789C4167B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100668739.28048.15126831879609394415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c41efd39671ddbd107d57092e12bd99b5e58bc3026eddb3c2509e303a72c34
Date: Wed, 14 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671006687
