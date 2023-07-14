Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA156FC8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5400C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689331868;
	bh=NQpnis2QcTS8DXeinY8Zl3q09m0TzxpYta661vg/XDE=;
	h=To:Subject:From:Date:From;
	b=aHPAzMjJWNMt3KdaigJvvSLh/bHUspJ6+JSYL3SipKCjCnnEjeokU+MYXYDQrEvE6
	 iG/VPbPGWv2m0rx4iAm6JYmXDCO8vQMvv4n1i9iSY3C2UKbmZ/APQlBXJSwAsv8AoA
	 vlL4Ew8shjiJT87fM2hAQJnP7hRLZpvRp2bynq8PltYi4OoQj1vdxukhvANevxK2mO
	 kzc8mAJWRD1mASH1/KS3yfxySCFUJWCtdWZ8FaPrEF7J/RVG8nNQ5W9H1pAYbZiine
	 tzUKbfs4Y1XjKFX6/R94j+jSd0vmd7PbVq666HpqNY5ohf5e7kolfn95rc4Eht0zAk
	 aHb+MGro4oWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C457AEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933186879.25494.5106294751532749201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54af7812d26a12f5df45da52ebdc5e2525997104a33a065e21644145a6e3a41
Date: Fri, 14 Jul 2023 10:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689331868
