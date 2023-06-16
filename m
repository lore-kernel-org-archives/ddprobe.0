Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520CE171CE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E5BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686931148;
	bh=UN2uOo/ciqnx1XCqbgwk4I5TNKVtyHDFkxe/nsxn8o0=;
	h=To:Subject:From:Date:From;
	b=kGwOZJAsYX9cEiUe4D+oGZWrSoNplCI75XAN5dkkZLJuTnxRyPQg4WGHCoKTgdowG
	 ArXpjtPICKrjiI3sU+LN4PFymhp7UUGsM+OFTUzCf0Ip1QR8GO/JLi2tAMUdMofR8n
	 KQo7khxQrxzUaWFILm1c6JsgbwPABf35ciiEwAr9ZjJWqwywZc/qRjk5gq1PFtJ9BM
	 grCjKs/MKIdWHfw4QCdnqCdwfO+BHIZrA0z1FEMmnRdOkXQb9Z+nd2zi9n6Sd/Wi7c
	 s3tff+tk6R7fskp10pevhe30fIxVBubCfWX+0hE0EZx67iQUWJZPWG65+T8EKVrSK3
	 P9WqMelxIcGbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0A6EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 15:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693114869.29397.12211831034244594018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0363febafbf770d7a4168263dcd90faafb19d90676f7644ff568222d2901f2b
Date: Fri, 16 Jun 2023 15:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686931148
