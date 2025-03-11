Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3995D25FA2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741717734; cv=none; b=aooYCOC+fkXeF/cvI5S8hawFF0Pf4EzmRgTnUEh0niNhSZn/Dd5E2JTFQI/rkkqLTengG7I6fqnlXlPbNkGXFkNiugWS8NMzDqIuoikEbyznkzlWmNFKiuIRVhw+ZppS3yo54T7m5ppxZN3+JKeCsPK0BAl3+0n4WYegi3kTLnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741717734; c=relaxed/simple;
	bh=80xmimEN/YTWEYFQQScJRuoM4rQGdO9HskJEET3+/eU=;
	h=To:Subject:From:Message-Id:Date; b=UEnD8D3P/10/tD67QiKLMVBvVjbslXTtXENSlwYCsZaunDALA2N4ywsCDBlebWnDz5qeOL/KTjdgiPbSId825EzME03wLVSni6aH6I4GbcS34356Uuej8Vjr7OMFDKTKUTt0eYsycO0K4zp8KySlHVEq8xvGt6ljc8cDRN0pdP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByJiEUxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByJiEUxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD848C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741717733;
	bh=80xmimEN/YTWEYFQQScJRuoM4rQGdO9HskJEET3+/eU=;
	h=To:Subject:From:Date:From;
	b=ByJiEUxH1IBHZyhQbqG3T/TBVcfwDoGh63eYE/qYLh9gC0l1B/2EkXsbIfZvvIzYP
	 aeu4klK6IVZSWFuJcdi4IttZnAVw6s15Wcdsu2UQD2OUluhIha2CdX7eVlBF7k3eeu
	 kb6/NxuD4AhdUZRp5cVxDHpqkBb1/E4FlxZ/X7gHvKl5dKEx+6h3Y/jQK/B5eNurBF
	 y5pHPptOsB2XpdcR4rxQfsUGU4VDUX2pzGpr225nt7jNqXSybLkKAbsoaG8GlGKqQr
	 3xgeyN3lNzFL2do+zp8QCXJiVmtvSrLt/Ey0Q65GbuHStH/uCWppvMGXsyV/0YDYk7
	 jCRM0tqAKuyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93062C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171773359.22145.5832508939848518641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125cf1c3dd6627151324e3d72eec98f96085a8da776208e1ea063030cbfb976b
Date: Tue, 11 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741717733
