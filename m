Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79A315A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832B2C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671670287;
	bh=RdlPPLYez2sUi7GRt8Sa3OGn2RWhrAfHLIIlGDVbc+s=;
	h=To:Subject:From:Date:From;
	b=SUawkXFnmljw1N9jVsMS/+bKD5xCt8KqNBW/385DZ6n1VcAW/LUV+DIfycSBbZhKc
	 jvpnLTpvHnIJR7UpeHGaSKZ9QzTyXctZCXiikvMHLRiSDW+NXJWlrwtP/0715oHP+N
	 pt48a72qEaRdXgMICWYwK0y7YdZRXErKTOS0OvzPz8i6BwHNj6RFPuTW2bTiq3Q1ZN
	 GG4KM6OxVlKoHnOwAWIAtHQv4b++lJ52LfYqRFz7oykeYUXTOuS9bcCeACcMcuAr7D
	 XQUoEe5qZmiWqQd6x5STGbMXboYrMjEp2G7QBpnZ6HO2miaMRmUM+KcoCNh5hESjez
	 0e5S57JZga6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A33BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167028742.1910.216506397943077542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fec2b4e73359393bc35cf2d5f3a122657776e9ba213722e0341ccf9a6ae40e
Date: Thu, 22 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671670287
