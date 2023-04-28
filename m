Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C223A4
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 07:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BC7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 07:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682665925;
	bh=XW2vB9M52F6XOgZVRlE9eKDN/dv/uLceHcFv9H15PKg=;
	h=To:Subject:From:Date:From;
	b=b61E7FnH6TsKyuObTnm5trxCg9RouK/2LUQ5Km1PqNrk/ppRgQJujRkei41r5iA+O
	 EL1QEYiylRUwSf1bNBp/Eh3JH/3fHnKy7DPZhPZ/NDvJJG8sGh35xcLjZmw2z6kVIv
	 n0ZXkkY3sEMATULJ13yhIx1KgTQ+u55TzSK15IT/5LaiH2zOkPJInkWgH/2mN9E+Es
	 rFtlGmuU7JfEzQ6DMemEvnTwEM4ovCqoteeL0F5BtX9FFC14VZGmFN54af6mY48GJE
	 mO2ZyuB7EXgjTvGTyG44npH43oBvP+Z5wjLccw8MnnRbsxmwtdAqxq+dbpBsER4cWv
	 GWOKyF7sRtypQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3A5C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 07:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168266592582.5395.5469919916840096073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a06b60d45e399a08ea8b808eb9fbeb9cf320ebfb1e34ab680f5d0c0ef17425e
Date: Fri, 28 Apr 2023 07:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682665925
