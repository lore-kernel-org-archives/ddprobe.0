Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45820389
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E39C433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685156885;
	bh=fiZpT5U9O+brn7MOcHVtIIF+aWLMMxFpnWJ7GzbRa38=;
	h=To:Subject:From:Date:From;
	b=ZqhqMYxkD77r0WqrxvfJ1PKV40+ZI0iT3Hoi7g5qi/weKFXHouE0TjSWqU4Dy1IT9
	 erYMX9ZpXSLfrQfrmAVZvE/p+QLSPjrnljbQ0hP5CfBY1wrcli0vcUfHWLbqX+66Xg
	 yYxlL9kq8kPTZm/gA1EGRUvC57UlGzq6YemEgTLnFzPqljqNinPyBAQXYWCmvBM8OO
	 zYw2qs0VA0V9KOfVH9SAkWzNT8psiVQGcWMU2QClr+fBqiDGV/tdaArmjo1t57dCr9
	 G5+stm+tYWSF+bwNwA4ybKqkUxa2aDFdpObzhlASbEp45o4+zgyA6g9aRjDoh9EooO
	 XXg4dUorf2EGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6867C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168515688577.23271.11007188131030248672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc378e65083a228dd41f207f0a65499cfbb019ff5173e3ac9eacb18b86ed6fa6
Date: Sat, 27 May 2023 03:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685156885
