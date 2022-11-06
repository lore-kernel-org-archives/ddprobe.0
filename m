Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEF3187F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 929D7C433D7
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667710254;
	bh=I3wQw1hTTszGlWO7jmnZ577Dfa3+6Rgp/zNsDyezubs=;
	h=To:Subject:From:Date:From;
	b=g/8O521Z++t7G0HYT/oxbyIe5ZzeChDMNTfP0ycpq1PdxqUHv+we0MjnzQH2MbmGq
	 8jQVmx/PI64AlfzhXHEUfLACZBvejpatz2nRRTIgh5IpQBbgXEBRAsvXjEGt139d3I
	 fObyKnn0QmETcb9E9ABmhm+ZckUrEEUtkyerfRKFZDelXJIg7GD/Fce+D9Qt9X2Rli
	 NiGHb47Azaj1I7ACVo6yyHryuyJNgEyYiTE2UZ3axMmcbw7upcT6Q/A5L8/YMS9Yh+
	 rXfXQ7LhhazCXuyGHvSjW+P7Ta+FtPnNaVvvAldrRAEi/96Pn97TItRrXddIyA891N
	 tmCEaIhM4CRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C511C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166771025441.28652.8604001637675075239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dbc232aceaa5d447fac534f59cf1fb1316c8be8d5648ee45946489eab7610e
Date: Sun, 06 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667710254
