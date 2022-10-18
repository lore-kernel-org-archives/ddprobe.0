Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DC85386
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68DC7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666126253;
	bh=t/8DztFwrwmJ+l0XLz3MpaaipzB1cmO2ltpdlb2mCyw=;
	h=To:Subject:From:Date:From;
	b=nBLIBdo1ksONoVww0pL2IbGVq9V8ozXO9mVJk8PJ+RKm9lpS8WXblHqwopG1CCW4B
	 Trf8tE12b++bFFP83fm+mmF9f71SJYDgVnrro8suX9wirx7sNT+gDHvse7CQp9UiOC
	 nJkaig5k7gc/Tmjlr4W8TqfWJRqhB69aa70NlciMkG9bpelhDSRgZbrcrTl3Zkgu4p
	 LdqAdvqyIwLLUdYdO6TTKIGVd2zt7SxoQWmSV+nCgjfNA7QM+SwZONDmpVjRZoQqwR
	 TmKTXrKvLrlJNY8gZieGDEdN5pwpe8sTajLiQr0qJwDkY5Leife84mCYazyawqMver
	 0oeQJ76W6s9pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540EAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612625333.22809.18083877473440780161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df6446be613e28147f2cdb6fac0834b47db63e477f9cc5a61f1f44d02d555ed
Date: Tue, 18 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666126253
