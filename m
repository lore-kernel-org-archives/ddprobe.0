Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7082F2D
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 652B4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663846253;
	bh=7SOjwSRpWYiKTulbGBSdiRLCm+GGm+StxNMyv5WUQjM=;
	h=To:Subject:From:Date:From;
	b=ZpbDWK9wLKjWShiwc+W4SGGfWjd4Uicw3XDqhfrm1TM071bznbgumPwC06S6RVYXz
	 GCoSHkuAzd0cHl6GD+GAQQhhR+PhizPH3nwovYzODWS5aINixbkWOxjqamHuT6tnLe
	 HIP2MbHkR/G4CEwPSRs9dkZ6VAAo1r1VUr21pj3gWGG9/Z6mjVc46VRXHo5XZYctB5
	 CMihPXJzNb9WWC+hBl+/sDw6qY2FKYbq/lw9wYFlI8enTew/pMEwOeR5Nv1P1nRpdI
	 3v5Y4I4xzWyOXKV3ztdhqlBwdb56Rvdg6JxVLb25DBC8KS0LhHfisIQratB1JqLKxM
	 C581flqDp48Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500AFC54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384625332.32351.8489553057746746895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f7e08cae520e53af59072dd1a59fbb81d2cbd4a41a3828ebd671867cc83cdd
Date: Thu, 22 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663846253
