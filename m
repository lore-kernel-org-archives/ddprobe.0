Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2F317C
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730680554; cv=none; b=pviCcz7Vnbe13o6ajfLSYH1R0uCuEWO9sYeL9A7gByQIDPfEIkwqh7lHXdl3HVxC5bAqYmCOhKj9/F4osVWDgnn6NWekSaToxxoaKeyjc9o3VwqMzZqHcuSxmmd2ZI/tUd9ACFnePHI747Lo1KnZ9VD5IUHA0MSauCo1vbXnpcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730680554; c=relaxed/simple;
	bh=5gNd/F/zMuQ8DZNu1Bj0HODHgOqE5KXhYClS5wXFLE8=;
	h=To:Subject:From:Message-Id:Date; b=I8e8kupbiOBM8nPxo2rqUUeEjeJnp2mqO/r/bRfqKR0QUjsL/vQXWYlTD45FCvsxZ9ecm7CXz35NgOKaBRTqq0XNlNiE4X3Pam+kvuE8kwhpQo5Ee/ElyZ4qErGkSEPsLDh61zYMVasfP/UKLKifzvRBIrH3cKM/ZVBNvfJ3nA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCD+y+/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCD+y+/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A05C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730680553;
	bh=5gNd/F/zMuQ8DZNu1Bj0HODHgOqE5KXhYClS5wXFLE8=;
	h=To:Subject:From:Date:From;
	b=qCD+y+/KWHYDMDV3NsGMbGRpqw4sfJvDJ2D5CDlgEiTKkMgDJdsE0G3eQ5Te/opRU
	 PxIg1eh1qZatEm3dmp4rRKCQxywjCFPfKnK8zR1bLxkiwYVJZWMekdPDzjxgdGxptr
	 mBYWlM2JUI+Aet9ZkmCz75GFFkqKFwH098Own8oehVhtBFnrxJfBJeyHMBNE+tneWO
	 v7CLaryYbhMOoDq6LITuCbPxG5TzT73/A9qrlAvEEmT+S0RrT8vsiV5JpY2r/R2NrW
	 pHzUWPSP3OD/07Wr9Vcjav6JzDw+C/HiH1mAc4IH+pDMEQ41TB4YtYroqS9bGgZoml
	 KHOF6UlvYP6kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A023FD11199
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173068055361.20832.14177084093151951930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ca0e99442d41d0524540497539a298f912ad0de5e636da75a42232b5568912
Date: Mon, 04 Nov 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730680553
