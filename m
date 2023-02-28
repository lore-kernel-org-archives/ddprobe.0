Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA3C2CA2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83CEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677585365;
	bh=i6gfbc1OO4bhzdK9jcpSI5cQh3YQZCd5Uhg/taYzqcc=;
	h=To:Subject:From:Date:From;
	b=VBp6MlV1Q8pAz4EEFiffHd3ilXqoXfglLU2q2OIn3xOeFxlaQHjLfaL/boiNkUxw0
	 mtXZ4KoeZiI2B3L4MhDIafZMW0alO+tKyWIBs/rdEsoh//jJKgfaP+ApQ565LmPuKS
	 BJ8+RPriD+sV6Utxy47+nJzK9OlS2H3gMtrmGOob/f08vRMXkVZUSCPyTT37svXVj1
	 FIMEXVKybJ0TLGz5zwkcZVepx1M8SnIJzHKYOMkFT8sitACdGJRtAANe8lP3JKZVh+
	 vN9hn7Z6hZhp1hn/AAjes9PG59sQv/C0isL0XknxNOaJ0txp0WiP82WrwtPA1IBvn1
	 DkapiirgYVucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B193CC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167758536572.7814.4942838908934218132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24972ab466508f739633d462605a70697c6bb2077d3ce8af0383b3968b018f75
Date: Tue, 28 Feb 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677585365
