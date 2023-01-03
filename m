Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23FE20E4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E76BC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672736487;
	bh=z10odd2yB833A6hXe2u5pT3BvEwcLZGc/G2WdFDtV/I=;
	h=To:Subject:From:Date:From;
	b=Mtr7pugkcIIzKeoZqhfXE31SjzWumnewxDosF+fyiai+E8H6UXvR6d4qAYB3mnxCH
	 9Y4RkdqPimu3PE4ceuXOAjb1hZQHHBpgg9jT2oBCppiTGIdnY+4apn5O+wsXpYI91u
	 yspB3E4e04LJwgHx89tXBKoz+Bf7HOYb4r3HtwHFTewtOUU31aXUTTPJ6XboYshvVi
	 c06d0h6Nq4T32y8lINnAZ+x2K6gE76gMUAnk7ZIWNBEaqbDBGO3WLEjrcyEjpjhutV
	 6FT836RHz5FkpMx9I1/G82nvcMrwy9NhxPOmglPsmmaneB34ilTVDXQOXVj5Ob3MkK
	 dW8g8EYHd8+7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7156EC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273648745.21100.11477458393544070473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c00827bef117ae86c9b46a7784f41f7ce7f0a76bcb605c6395f9298129608d
Date: Tue, 03 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672736487
