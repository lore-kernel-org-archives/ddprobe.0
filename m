Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3A23206
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67CCCC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662748253;
	bh=H5VnlzBYaYuP5UfHIM/CUecswk2E6GA+j4ffyrWURMM=;
	h=To:Subject:From:Date:From;
	b=FrIWWNh+5WeWNHC8Cb7KWprkCX67sVIAZ6lxq4SoB23DgJdYIG7k+BPBQJePBUgh6
	 ML+DFDXxvRjpDEzyGHMZ+ETVjgkYYx9X8KDzyKF7lRaR0hX2XnJ4hRAy3OCemKBwWg
	 ihSXuZJRDYmeGMgVi37KrN7iG03S8B6Iq+0gNIl7EUkc3yQ37R7zGcvt2wtbTh+8yB
	 3/5eqdexVVSdDIOxIQ0JJWj1X48teVEYXWzi5vRUVZMd8y6p+jG0nE/VnPo/GWbSgr
	 hnDj3G2qPB4bSNhW4uDZ5kUwOgNfnP57ix6gAp0UjrjHkCE9C87+yO4hB7H0yg1wWf
	 w5llKb43OsZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AE3ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274825333.25776.12878478270169060293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc4cec781482c658deb6a5856c538c824e66596420cbb28a163550a12c43c86
Date: Fri, 09 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662748253
