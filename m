Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF70446A8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711BFC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663537853;
	bh=CQVzA83KdzyVfjYCxU/x3fS9H7uJOlHGFz6k/w/wIKo=;
	h=To:Subject:From:Date:From;
	b=BY1dkc7rnfUo8CJow2mth3jTn+bfkxtOrS6bmQ+SjQt8xq2tzr+fQ2lchAP5RgWOI
	 ZehorSJJkhCYyg+xcIvvdLrPfmu2H0mXL+Mc82tDkwx6e6GqHO+gjwNwmV7NfV4RxZ
	 flpZpIYiGw3uQvzJ0ZW2kPH5jLzyJHkFETw/dlGLVEqXoRHEB3ZTgJQUUTB+HqtteK
	 yiGK9TEtR2b02GBkwmHhGswqMo/k7TKM/heTxxc2Wa70BlBvIhzUUjV36bA9BB7pBL
	 419XTEImLNVtG5VB2z0FuMnI0OMq1s/Qw/dUbfgU1jTdFft+EfFNy9mCN7Ne6iayrT
	 0kS0FUmOvyHug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B39C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166353785332.9562.13471069896614823592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8368d9e098cf5a6d9fda1f2d3afe85c9ca39c13c5775bc9a1d43bb056ae6d6a8
Date: Sun, 18 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663537853
