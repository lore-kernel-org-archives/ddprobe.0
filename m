Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4491106
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 04:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdMeYV1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBA4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 04:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697257628;
	bh=b9NraAAVGnOYbngd2rC+39i6AqZVT5mZWwA1rxXFtBQ=;
	h=To:Subject:From:Date:From;
	b=XdMeYV1aI7iqoeg5ae7O9p7Hu4hdw6nkA25ByaLMrBCKDea4OVdAl7As42AAU32jJ
	 GTTiyrVQehD8Hi9Ho/9iWONkihNLfL9oZepqQ4CGeioV6wzRRUUU3s7iWKNvj26qT1
	 LuvAU6iM13o3sdIRkA9PS2LVUwvTBLyVob07xkA1AqFruvm/URg6Hrwr1Jo5WSZRV9
	 IaUliM0PlSR4iun5O/TCjJir4KtVkl9D4rFznT6z17utETBS1YKeuGBFZyCyseYTWa
	 ZrZO+82NJb+lh74kVviZbR/qx3VbwIJ3DUZnNVX/ZvzRgmKY+zxR0304dx6qBLR+gE
	 rhprEPBtXqg1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F5CDB474
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 04:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169725762869.21665.17227724045608558031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395975be010ba640b4256ff0d531f3bbaf378e1e120a29dce08097cf42ea2a29
Date: Sat, 14 Oct 2023 04:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697257628
