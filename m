Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0C48482
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85AFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687329788;
	bh=Z2NPj/m5fErdL8ccywJVqjWOkRli8AUiGH0cl4l33IA=;
	h=To:Subject:From:Date:From;
	b=NM8lgrUSA68f2gaSLgWVNbwUo+Glu0Do/s4eg3vhIS8oPuJHXUFkbXJzKYaL/auXT
	 86DhsVyMMmGBlRjx4N+TjNBiZj3Gyjkw4QLaq0dDI5pSNiw3nBla2qZw9AjJCTFJm+
	 3iLt0YjgWfL4EdokyrUJIkK3w6aktiVGWdeuYxU3OW3sMqNg+mi/1mJgEyS7NXEc7y
	 O/TQk2/hYLGjdRjlUK5iPnVWvtAlA4ksuv2sHJ4MGZLGSpvu+0+02Smmsegp1UKYx1
	 eAzXHY0OzfhjrYfUM/lL3ACmh+4ltq/AqVZuUPQv651fheLv7ZeJtprkklbIJDHf3W
	 YvzaWhPeNIBqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54E6EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732978873.24109.15424868277665679545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22267c4dbe882d6fb98782c1bcf7bd4ed351c86bf54bd6713131ebe7903df6fe
Date: Wed, 21 Jun 2023 06:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687329788
