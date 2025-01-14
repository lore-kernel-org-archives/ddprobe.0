Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B5D158531
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736867154; cv=none; b=ZULi96F4WJH3NMbEhVeMk5oq5jixxCpzO7y7wiBUJmjE4r2ZmuMLHKjLdZ2WTu/qXg36Q0W38y1tTjlDemYCq/gqGohz+Cc4JRiKgC5Fs8Wue8seHClnFXg0oB8fsVO0gs3XkZkuTC/1Y0akNI2c4tegxp0gkA1lGqyrIW91cyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736867154; c=relaxed/simple;
	bh=/45QrnNa2JbFPdjzb0DnwgnKE+WXqJhwXtl+vdtwCvA=;
	h=To:Subject:From:Message-Id:Date; b=qtdqb+0RZFRAULrHr0e0/8kDOZCVMJYs0H1XkfRcEotVd5hKewR2tUf96poxL6W0nf99JYCrZEko0S0qRK7JBAiJIp8qngGHHkNgc1Ukv0RwL1rMq77FwjVYUgVSnXiN9hOg8aZ68dL9floKQKSGPwzs1VITMKuU8gXMXQWTpWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bzrgra6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bzrgra6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A5C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736867153;
	bh=/45QrnNa2JbFPdjzb0DnwgnKE+WXqJhwXtl+vdtwCvA=;
	h=To:Subject:From:Date:From;
	b=Bzrgra6neZceJ74s7xwICUTLpDjzDVjwmX/mxMFgrELJrCb5voj56Ry5l5G9F8v7j
	 Ir1J0UTRBPDoCo0+ocRXwLZHOACCphP3q6bPoUgDWaR7ta2rXV7R9JBojkBP9eP3lc
	 pPGwBcGYl+TljH3yuG+NuA5S2g72KORLFI63ggkvYuHs2BK7mOWVOosLRKI3hZroj8
	 gx4CJ2dw/gM36ZNxaM9/BvS7wW/9WtuOqAfxsTOEbTkZMwXLoGaPNJxF5D96WZ01j0
	 Kv00yi8Uo+k/OmK+7vwLswLdtgqpmVpbt3vWo1DCeWB5IsexY6Ws8J2lkQTpSnKsMS
	 /rL89tCAsuojQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933AEE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173686715358.27015.16137824244857478539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666aa19503545a4d263d987cfda02d27b138f6d954d4102e192ff2c065377ce1
Date: Tue, 14 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736867153
