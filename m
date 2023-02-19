Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50393363
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 00:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7314C433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 00:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676765225;
	bh=kLNGKERsyEfEIraULqsedXTmSYzhQFzlNtPC3IOuhCE=;
	h=To:Subject:From:Date:From;
	b=KCjRJSiAVL3j35iJEan8uympkEZf9n3gFAyPISndGMRt0BPa8sgNyR0AqDxlNeIvH
	 mDJeAaggXtzAscOUWpv+p8VYki+UPI6Ek+ineQKH0vbBsF7MPHwQm9yOK5GbFnSfha
	 wLbR4Iwzz8cuOQh3Sym+twq2z42t1Al1dnIdDYYE67l9q2dO2JWhpMKx2xfodt555R
	 tjgMjdhq6lRZ1ywnTRewcOBW3IMk1SuGgn+l/rfh2/K4onm444pGCODG+gTRBwGGS8
	 HQmn21MOXXoyoRHDw2uVJC35rqh3vujXrhhu7YHgvT6+/lgmkfRDDLGT9EYEuszn+x
	 mudE8ZJO0gQ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C667AC61DA4
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 00:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167676522577.3611.11802618184609173067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c147bb5b8215da29dddff521071877a8c5787ae98a6645f51039d1046bd9771b
Date: Sun, 19 Feb 2023 00:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676765225
