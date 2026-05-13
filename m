Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70B6357CFF
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778668233; cv=none; b=nkSj2MkO3BbAhhVy+B3rUCU4c81wbaa8XFYT687XV3p+hpl/zvhDPKtOpn13r1mpqxqcAJxJCzjmx4BeOflZLqu/27mGBlOQqO6A9v1lt5livhGzZYsMiuYcUGAtr404hN/UMC+r/qD1Sc5A3dsrHzvA0naQCeRSsOZJVKKfHXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778668233; c=relaxed/simple;
	bh=0ixFvC0uPGfWGU+jiP+hiuy7Q3uN9JryzwYOZMPPnIU=;
	h=To:Subject:From:Message-Id:Date; b=AXeNrDZLatm9tc9/19mpj73E/FTy+gW0mw9pT2HYnjPe6U/UtB6BtHXoG3tw195U8UKwQQTXcJCEWS2s5v3p8HrYCbKKe+BNODs4oqKNgjAfkGg4LCN2mo6vU7bKHElTPhqCJg4RuZVGQ5+5splm9lq5W1OpYySjUHLKaSRiy/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zw/qHdj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zw/qHdj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABEEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778668233;
	bh=0ixFvC0uPGfWGU+jiP+hiuy7Q3uN9JryzwYOZMPPnIU=;
	h=To:Subject:From:Date:From;
	b=Zw/qHdj56SZ9vFZQr5PIS1zBAUftY+j06NUem2LMT+fxzdiXet4VdwClsRfw4MTVQ
	 zEQLckpE/FGw+He/g6Q7XUtv8GhizG2JMt0jGyMt93KcwlwrUBvH3BtQeuYfv5u5Of
	 3cH/xGd4FUJUkkT/n36S/YO/jvZxQFolVrrXz4oHN/9UGJgMWANe+iHs8IvkGSRztR
	 HI4I0fYV733KUsRK5hdS03PF/8s90jU/55Fh8kcY7lnJIDFd6ivkpSTZgD9DacZMgv
	 MYE8PUjBeO81YWKlKOslISMrb32YL8KxRRBgKRPWmkXdXz7+j/4RWgRAEhnEC3ldEd
	 RdJ3e0esQi2Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB525CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866823369.32502.258553440663458266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacc2ca94a7771b57cd8f2a9b6ae32adc8e894272f287f99b785511ef25e6b64
Date: Wed, 13 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778668233
