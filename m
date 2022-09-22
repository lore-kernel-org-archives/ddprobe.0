Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA7F66E8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B91CC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663863053;
	bh=8Lpnk6SMy4+ej/emcUNrQI7Vs47x9icDsvyqVTy1Ens=;
	h=To:Subject:From:Date:From;
	b=fnpkGGOtKHjoqVoKdteYXkewXpHaM3PZaWdgKzLpQB8sLWrdqyjmUq5W2tiaby4F6
	 ftEuO8DyI8WZjv+w7GUZicf8uoxCAIRLgro+f2W6eMirdt2IAqGRZ+PwnEwhDK1tgc
	 yRZVNmmqObu4GOGW6xj4c/DlN3PDnGCzaxuzBsqzf6GVW/OUjZbuvDwqxwZ2TM+jrl
	 sjk8KPYFV1q4za4mCP0z7RFws8sP2Yc1k66vpcCaLvDyClq0DqnpSUfVzatugn/q/X
	 C44hysvU+pD+kdKgaaeSppvbfar+JwDnDxXqEolH9/DrejGw5Q2QATkZc1RX4eGNeY
	 h6XTlPczysfHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F763C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166386305331.11225.9625524615720446031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766e964c3766cbfe8ba9d500e210b29df91a5892516a17e588b157f70458343f
Date: Thu, 22 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663863053
