Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA4C880F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5F6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671189087;
	bh=ZNqzy5VHTdDJ80ZjbtCoslQfbDMd+5jIZ4/512pUmB8=;
	h=To:Subject:From:Date:From;
	b=V/+ElZiQfm0vvDPJEu2fkfb1fqcadXT5VwMcW23yCUgXVlfArGJ/HSrgcRoaLzELJ
	 vy8tJzKNazlxbb1NjX8ohS1LWUkxaYipBL7Ppg/oomAmLd/RdGv0/wZpk7uFMoQRLu
	 BQAXO4yFjOGCbhhYxlGC8+Etx6L0v2S4U+VF8ufcKoJgcRA960bUi6bS73xhNG3csz
	 gEFq6ciG3gUwmvvKy3m8KBeWprYfk3bAhWeKtiESN4Fado1HMsresNgrNQARvUEhty
	 mLtiyPrcvb8caKfg8zFzXJDEqfRgcfEUl+omWH17aWBM5oIZsQZKtNZlQgfVLiBzHC
	 e5ItRwd4L+ZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65442C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118908740.18282.1502762147667238049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b40f36f151dd609134e2497d307e0eabd749a8a22e2c10337a5ce7bb691e40
Date: Fri, 16 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671189087
