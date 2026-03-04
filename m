Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A75D3DA5BB
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772651094; cv=none; b=qFlpIX/UUOn9ATsqy5HBF4Gt2KX/fHbArrErYIfPf2YfZfbTmhip0+ahc8bdklhnqMRzWfkhlv2Q/sSt/dGy508yNNwvZ4TZNk+RnWxbGVYyTPRwi+mlt6z60aPhH8PtL63ckBo6XxseByT72XTBnbmif6wL7/FrQe3PSrBJHrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772651094; c=relaxed/simple;
	bh=7lPhW+s27nG11wVn5DQM/WxxWgo8SwMgqgK7rOoyYy0=;
	h=To:Subject:From:Message-Id:Date; b=dHMsXc6yddjGI6wJwLY9EuhmcjSZSEEEERJD5Y5TWcaJZiq7QWb7Y8jSJB9mqRy/NpcEBkfStY/klb8oua3/I8KtCheibZokdfOOU8AhNNtX2eWmKE6qTHa4ZM8xTX5Pmtusuc2YirMpOWy4N1xRPDqs5PnEDfQae4EPJAYQtpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4UpENww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4UpENww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF43CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772651093;
	bh=7lPhW+s27nG11wVn5DQM/WxxWgo8SwMgqgK7rOoyYy0=;
	h=To:Subject:From:Date:From;
	b=u4UpENwwXoYI9GWcUiRbbpK0CLKrDPSaH7GIRCSR3QfP7MVii5ZW0LXt42tqBqwr+
	 JOJFhMq9XSJkFdRN2uyfZzlmsypkdHLaReEOatvZ5D0LmeIfdbFRy6ynRk7G6fr/XF
	 P3mAXh6rFOFPhd/fECrEqSdMUoSMUwhDzMh83RUIUs3TyywjuU+UwSgeNMIRdRX8/R
	 ItE/zpWnQ9LbmGrqIP2QQK0bW7KHjAtqVkJUyD6OXCTTvXmFlWCM3uxkG5vskur1Q3
	 I0j2B7uYjBou1Z7Y9XbkW7yGggr7EvnAtPAWtS5/t3zvCqZhHadx/XD1tmL2Y14Jee
	 WPhV1IhmEcH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8CAEFCE3D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265109364.13147.2095569491470566101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c825fff08e36c59173b75a3817bc7143f8351bad941a6f8367676e1c746715f2
Date: Wed, 04 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772651093
