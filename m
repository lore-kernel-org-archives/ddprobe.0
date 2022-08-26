Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ABB2560
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A0CC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661500252;
	bh=pmlzbW5OG1QSvnYj4BPAK7Qyt1TXyQWD2H7C7Xw+9MY=;
	h=To:Subject:From:Date:From;
	b=QqmLx+4/T/749VPO+QuEPQsGP3IevJBP6gXqVXA9C+Rn+WiSH9GkJTSE8TrYE0G6/
	 8WF+4FdKFlvYV5qws4PE3WMT7boeN6psLCedBtxI05DTVIc7wOEWQgHqNpUnQ4ZJP3
	 ILllM/gixPKpJ/wo1C4fnA7O7XiHl7W0l9S9DRPvFjCr4/X0q52Ekj+burIW9HaBX2
	 lrQmXE4mS7jnHceHZkc7NuDSzPVipmRa+caFR62nqs7cub2oGO9qnAspAzjUZjn9Oo
	 KFkEojSxcd8YtzWJLIGZfHGNJfqliHD9hAtgUfFwkZ4OxeYE9O+3YlW7Xw4+Lq2ev5
	 UgG+ooGm+y5ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFD1ECAAD2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150025237.12738.8810884891641923742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c911bbeef6bed5921d72369b433b69125dadf79ba9361941befee08948afcf4
Date: Fri, 26 Aug 2022 07:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661500252
