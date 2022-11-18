Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5C1360
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAD9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668739254;
	bh=8yMdjbocjGGGXgwtgIZ2Dh+znxkKSVrJQWA/Acjd6aE=;
	h=To:Subject:From:Date:From;
	b=ajc2zSQNCu+xmRo34FYyrjn6ttzdFhl0q2/fxXX3EW3QkJn0erDMDW+RxNzmjWysH
	 J+9d2bULegL9LiR5dOocY5FdTPZclQiVn6ArqpHvEFaYvc0U6PFHmP0U6gZOejbpx0
	 gRP3fITh8oWwTnE7oYn5En+FevF+k7nE7QlKJYrS/uM96RHuMjBE18A/3kPGgxM2Ln
	 JmBJQbHmgcmmLdlyjYBLKIvhM4LkeZ0c4I1LXb9YsdahNltODn1SBhY5VqYw7cL5MU
	 yMsvFtNY5Dy2dKz7EpmldoN17DNCeMHi17pDkchQYREr5WenjvF8xOvsar4OKiH3iH
	 hGIK6SBgCkGuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5266DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873925432.6035.1402107064370659398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a8a47b2b204b6fc4d28b8bec1e285a3cf3eb7704b24fb76fb4400dfbc9b53f
Date: Fri, 18 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668739254
