Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC697F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718AFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662961253;
	bh=tHQ1LQQTLNqUXhhRty8TW8pJdqlz+Va9TnKzZajiS+E=;
	h=To:Subject:From:Date:From;
	b=iwIGEY2SOkDc5hfnu82CmkmnMkqx6k/niGAs4jykRTAMk+9Hf9XD0JiRpiweNakng
	 yH4zxtScbI0DU/XWkwm/XTB6OTlwDg+RamMznoFZbQosLND0tzEq03jP+oFLc2ayIa
	 tFzjC3kHRRBaYaeGje7teL/GlLKZHduccCAI+PXyORU5psmm3nmO34jzxnxG1xgWDH
	 LymnVaweZh3J2vloSzUyaOsMnxqMeazQyin9rkAV8mfChmqTeyNib5ZskZlaeh4pYX
	 +4Byf1txQui9W7bcyKrue4HT4yk/HcJK/U+UlJOAmjWHw81bpCAIVLlX3TS38tgkhF
	 Z5XaOlxH+MJoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5655DECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296125333.26477.4221042958220553529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e663d75db68f81ce4e72d799129c45696cb83aac909848977bb269fc0e2969
Date: Mon, 12 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662961253
