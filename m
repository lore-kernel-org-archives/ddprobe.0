Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407F0417D80
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784146714; cv=none; b=HEMTHEMHMfm0+Dw+Kd2STXMoJfwnWGb0bPEEOsQOJfdEKqMjzsQSo/WE6AbJtDFkdLRTn5tBoAQ24azVSrVppVbJTGDojF6emc7XXcJ25fk32nq2gGX7Zpza9ZseJ/4pko6k+eZu+qRXXW20CaEx1y1rHRh4M2SZFhSU7xrLJFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784146714; c=relaxed/simple;
	bh=8otdjzEKxTd333XbZpQSBettn3rFvU6JHo1pcN2wApA=;
	h=To:Subject:From:Message-Id:Date; b=H/o8o5Mwu6KR7YLlNK5hnlpliFQN3RU2u7VnC4ei5sfDxloKGJLQQM+6KdqQfM1UPfgnX4lP6qE4h9/yMZZZKFEquFTsVi6DdiiuCakhs7sxgIAHuFnUGOA2H4xSALa+Yv3PgKXmUMtXJDMptjCeOzZnzMyxibnqpDxp8gsZkAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDZ8B0J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDZ8B0J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DF8C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784146713;
	bh=8otdjzEKxTd333XbZpQSBettn3rFvU6JHo1pcN2wApA=;
	h=To:Subject:From:Date:From;
	b=jDZ8B0J34v9Ce0ytdaqMRW8dMZ6KeF+iDD5W3wtEkCRhbfKjssJ/0yMUed8jO2BNF
	 wvIcdznYXISGKvzRI3peJ9D2vE1WfOKoBzwB+QTLxeU9oYojUJiT1FsIqcbiGPeazU
	 2qvdbrBaubgDSw8HeexItfQyOZ5HiYrJfTk6bNzk2t6PT6SexE9L0+3TwHAd+sI21w
	 WMq86gpEa8rAMHE55aykyNCLwyDwTVy/e2367K24eGQLUM/7n5aZM0mKJ4YVbejU8E
	 6eNEMxMTBEvICd5bBFfj9NbZzp0cXOAGZmZGTRgTRMi51AwXou0FsuoZpBuYgppElJ
	 LqKiTblP90Wyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B088FC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414671368.4024.11051548478058732428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca0381a55025037f238402bc91adc4f168efba0ebeed64a26fc7f21fc062c94
Date: Wed, 15 Jul 2026 20:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784146713
