Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330043232
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 10:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D845BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674902585;
	bh=UGEZDNRuiTcbr5nK+BmZtQM6LS03pP47FHPF1Gh/BNI=;
	h=To:Subject:From:Date:From;
	b=N9irqXBWhX8AE/wA25Axdbo6V4lLNCEw4kPWvWzSiwOSc3wlVfjmqfnioEyiAdzrS
	 EvWJxtvbvPJ+C83HCRP+6iHPrXNxQ1zAg18IYl+RbBmrQ78RS+IA8Q3n/JeoBIwEuf
	 XUXNDcASJ6Ms12m/MVz/U1eAWL6fhOhe2uTn1XgqsBP+eyigWWGIMQ17QxGE3IlbA+
	 ImVc81GLUixAuDD98nhdBL2oTwzsaCwNNXRiFyKKIUb5O81Vc82Dw7abHrPizfF2jh
	 9v07CjQIlxx62xu1+qxJ8lgP8y2C+UTAFGkLFGwEIwkU7UX1GrmeWKA5HBQgPP4UQd
	 N1K6tidvxgvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB818C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 10:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167490258576.21128.3782528890243020749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e9639de3ecbbc138858dd9cdb38e65d404c8cc2b3fa842a5b1e71885f91701
Date: Sat, 28 Jan 2023 10:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674902585
