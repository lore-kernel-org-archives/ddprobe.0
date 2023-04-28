Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2993315AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A1DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682647925;
	bh=rxivvl1vy6JBbqqSurHQPDAyIfuuFFVko+HK3Mg5/3g=;
	h=To:Subject:From:Date:From;
	b=Py8O+F0cQD7FMZyheciaQ+Xo0fWSGE7JOT+ZU9yXGImBCdDWsFVnOeYD5mRX73sVx
	 sNu5dlvBevvUCt0+6Q4TRqzC03SX46snJNhPSb2ZejjPNzv4uoqhMnYX5jxaZ5CF6+
	 HuiRV9QTqH+0ir3d9H2NEZA9+YWAFjEmXWKdRgz/c5ZAVb92CqAMfrSMUODagC4QmV
	 7okWjaUevDVNVjXsHBQ1yiBd8kbPgg2lyIRRXYz6JHviRkv/9Z0JP9R+5qEbKxVVh9
	 lusz+aE0LSY8/39Qq806LfKeCgXrRHi9onzv3SnmBC0eXl8YFvf6JGBx52qWHtK0A1
	 LWfHgZ7f6kQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9A1C77B73
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 02:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168264792575.16339.16856325066997704815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71576004f83905a2cd1e6542ded203c5becc4a391f006ed98e481a025b5d7c03
Date: Fri, 28 Apr 2023 02:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682647925
