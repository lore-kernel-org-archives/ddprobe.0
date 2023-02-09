Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA2833EA
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 11:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12304C433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 11:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675940466;
	bh=Is7NHyr/g/MS80kMTYzksyvXIUkeacGxEYUAgTjgxzU=;
	h=To:Subject:From:Date:From;
	b=q/ZBFKJLQNiUCum9PkV1jSQBA0mGX1ax/Bua4hyxF93kATKOUJ6fzbvglA9hGR0Uw
	 tB13vlFJeLAQBD2IOtOLQRCVC5m+czw22iSBFjIT7qwThYa2LM+ap4S+7Bfe1F734T
	 hakdVjZwChgoH3TpOplUDAPsP5c5L9I2lLQV4xkOOFkJ/MvqAR616UEIxLk/wqf/mg
	 addf97YFZyVxs7nv74kDv5kftlt0HOFZbKLzsLsO1neWQvpq307yMkvY829qx1I6Ka
	 BKiDC2I2OeymP5WG++0yJwkbGWmBahym8b8S6mFkGT0L6v9uHFMf+8RfvPDbiSBs+F
	 pPRVaYbpwZJ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDA04C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 11:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167594046588.32159.16327515637881011166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d6fd5a209d94ae2d3ec917e9a98fe8c638246ca17c1a8dd1da7a041f70be23
Date: Thu, 09 Feb 2023 11:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675940465
