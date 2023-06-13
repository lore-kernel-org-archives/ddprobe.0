Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D7B3C25
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5B4C433A0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686655565;
	bh=xjtigBd/UagKoRJHCtwBsYn76j3M7DFw3V9tiOUjzOk=;
	h=To:Subject:From:Date:From;
	b=rhZ392UvXXAnyw3HvPbDKdV11V+39Ei0Kpm/KFByIFOyBH9VB3ajuFh86gftZ2KDv
	 FlIs1RUUdSdxdvgHBdSbcsF1pe0v12JxNr50YMiJQ9LMwzatXQgpyR7yOWZ49rKmgH
	 cnqVXSeowHKDnPMzCy35DhAiyy+GqbJrQ1nYxzYPPaDd0oPQRDof1w4JGACZu+L54h
	 FnAzAswUimc9xn9FZMJlPq+qVrLldBHC4S5BZwW7vVjkmH7/9aU3V7wl9AGDyIPoAn
	 JksjyLTjrX8dhaz+6sTj9Oa+O0mBW4HRWkBGYoC1+PkCkX7YS/4hFQKWhUd/yUhp4N
	 hwBqePEOtWuOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB80C7EE29
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 11:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168665556575.30379.4848231579509053309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b5754a8cf6bc6029ffa8e63d35590eead7407322611279c6b03350f318f366
Date: Tue, 13 Jun 2023 11:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686655565
