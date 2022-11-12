Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1AA1B573
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77929C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668261654;
	bh=VEVY/jc+62OHv3/mBTRmAQ6XSEiK20BCUR/ebuXH9Bw=;
	h=To:Subject:From:Date:From;
	b=SzqLJ3MIMjZy1sZmNXu6hEV3C93EFz2zEKTdnguuf1baBIQlvpYeNDYBHvxnsUosb
	 sQxlFWy1z9HWmPJzZc7fwwDGiZWVHamrJkm5c0gf54eva+mTSCNJRdwI/ILD2qLj3M
	 gYIi+su+A/iynpgHvRMNtYcd5U+NFeG4Ru4YA39eSmI11/oSB95epA0bZqX6Ugibo2
	 PFp2iyLPEP8QyWJlZhijyXhyKHI7G9EYmHqnDFD7DHV49SvxoYN1C9LdvMtXLmmjd1
	 mF5LCrjFL02hXJWoTfNntUv1gixs9znoF5CRJ43tqFpvuEeax8M28BCwsbGcAOQtEV
	 Sb7L29jmA/kzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565ECC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826165434.5521.10696443542446336361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a77dc4b6e5cdb1c0b943e7edd2cb77894661b0c4b32b31945853f877e44c53c
Date: Sat, 12 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668261654
