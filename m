Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E7B3A8750
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773414894; cv=none; b=t6vnNGT0iLxPqWEaWPbDJK20BEkvLY1we96lByGJnqGhFW2cl9pAqIO6yOaUMzblklTclFuj4ZsbhV+Db8nFuSSoJg9etrMBtrQAM6o+yqiG9vnMdQv1mQxS+HSII+NPvjWM2T8B8ExPzZ1XLYxdadU2+2uZjHfmIbe2SDhzydo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773414894; c=relaxed/simple;
	bh=vTJAIuHAXZMrjSKoyWaRF8BI8vwFNXSvFPmMECHuQAM=;
	h=To:Subject:From:Message-Id:Date; b=tgqgyKhvdBUl79PMLModGuSaS9R46u3A6sYGgjgOQKdXA0WlZcuQXfkXOTpIAV4yMp2AYymBZ86g2UMrEV7GG5e0Ux4EpeXPEd4xF5o6XHTGwjluvxmLucNfjeQjev+JjX9BSLjhZIylfA/c9GxuVBGHBI0oemTfJPLrB9H/+hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is0lSdMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is0lSdMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA6C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773414893;
	bh=vTJAIuHAXZMrjSKoyWaRF8BI8vwFNXSvFPmMECHuQAM=;
	h=To:Subject:From:Date:From;
	b=Is0lSdMWIbgh1zthVzZbwKD01RF3guuX1Ke4mv5+zds/35X9vL6zH2kSNVOjwiJ48
	 54o68MhRwQn4IM4JphEK5AfdFodQjEtyTSLDCqiVtzBaQV9Ib/E1Yhwy2wnyVLWz5j
	 qa4v/vnoSMohYZW7a4i/Vg+N9mrPzm4A1kOSmreUQJ12pC+rXoXCgF0cJUjU8tbPFA
	 xcgHRXfZGkjon8A2AOI7bE21JT0R+fVdO8FyT2Ll4d6tSjG1m3hSIz4YDCqki6upya
	 wNmf8ydhVKirwSPHGiZWLzbXdwA465v03Yhoo41PKrvVLY+K5N0ew3axUT+8mKfMnj
	 wb9yXZqPWFm3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E8105F7B5
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341489359.9974.7096848916410389025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a0a311a05a19bba8c0323f191c4da73eb61ac39c0fa960dfbce2e6601f9132
Date: Fri, 13 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773414893
