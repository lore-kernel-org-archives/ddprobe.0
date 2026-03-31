Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0200037C92E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774940094; cv=none; b=l/kfP+0znYruIBSMnU5S8i/g5YMRhQCmtzcUcaaz0AxUTiUh3BzwDIRLGWcgvxP/UZOLlgVW/z8VL/SSifNE0l/PuRlwk+SUHSEplftBfiNVbsc5bY1Y5U32VAgGJtxrAPuuK8tlxycaxXsZHwh37rrBQHTdAopuuTJywFt7YFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774940094; c=relaxed/simple;
	bh=FXk/7WfnQ8wx+XNB3e3mtWkdbKA1qw0pcm41xFb5YPo=;
	h=To:Subject:From:Message-Id:Date; b=PKvlWF6xiysM6WuTw1I3O18t/wcVosGgrg2CNChw8rjnd253nF4jKMuVYlVSm3I9dkNDhx3AqudC/Q5DDjcsNh8xRiPQHx9RC2goEzISF2C02l8gYWgRtjNmveLSKCBrEglpKwACE2J3aj0JXSfdNezX/uoY1hn0jBu9g2wIXws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eubs/pPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eubs/pPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD35AC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774940093;
	bh=FXk/7WfnQ8wx+XNB3e3mtWkdbKA1qw0pcm41xFb5YPo=;
	h=To:Subject:From:Date:From;
	b=Eubs/pPE5og6x2XR9OtXrtdXy3zdlObhQ7W5IuFPQND80fRqk9u17iYhl2OirKvZL
	 U6yd6SjqzJBqO/SuVrbTbEO1DgVc4nNvdVDnJhd5d/apH8C5kP+2pig7nb7DuSi+Nm
	 DjxCk/puF/oTsA72eoE0ZbvDuERh77sqe8z1q2ucy69ufy3q5fxReWxJU9IYxPkUwv
	 Ppv08Bjw4/W/0ksj7QQNg5D+dGoEHY7s2Drs+Z/FQ04gWg+8o7zGXeGFey0MvQXvB1
	 vs3MQYiyWcm/jaJrOa0us7Qg65zDxH/iabYPzrHBVPjs7qPlEQySyWH1Hty7fQUxL6
	 eBdkcuGS9qsTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B41CFF60D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494009360.25610.2227215438746463163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0a5ad6c7b72b51c2a67862ccd49af10b3cef3cecf2bba6fdb27ddcf1e98cb9
Date: Tue, 31 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774940093
