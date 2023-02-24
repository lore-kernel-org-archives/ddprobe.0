Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3618817C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 03:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1155C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 03:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677210305;
	bh=rwfYE0JIJXwT5TS8Jeue7QQbuOBrP0ycs8Hmi4r/eXw=;
	h=To:Subject:From:Date:From;
	b=mOqbfcwblPDry5gVD9RZK/TuK9Au/j4JSSWY6Q/SIaNmZZAbMZRBH6fMVIPH7mfzH
	 19MlRQR2oAhKZRsPmKOxyitsOHkmAz6NvasqcVhiY2LQjlmFWcjWdLY4y80p0QlTLA
	 MBFc/g9Uu4823URrpF/7QYwr1Jv4Jtm75mcP+dH+AgvpLw29hAvPYmXJ9bZlan+vnL
	 o1xxKdLSiKW5XFWiNqrPHOh3lvuI3llSM7KJvCYjpohKVVv9MMfwXHw4WS0gUiqQ5T
	 y2s9BNDQf+6i1eUxGriahrYvlaP1XogY7f+44a507F9DmhvLCVIQmmow3u5bxCTrHi
	 QcVCWSyVZ38zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B519AC64ED6
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 03:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167721030573.5970.17647354389622968282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef82890dfc132b50f18648f2261379c573b3385ec6ae55b150f15489c6d708f
Date: Fri, 24 Feb 2023 03:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677210305
