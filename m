Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E6E1CD15
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759323593; cv=none; b=SL9Oeto/g4ud146BJLFh6NWUcMrEiOFl8yho77JCP9i9ksPO17FAvVkdppilSj6Z/VDHHV84QZa0hc2C5sPAvhpJBB9K/CkQID2xY5Kbi0bX0ncjms67ZOS2WnNUrVPTk+SX2fBfhKu7h5CS97XMfN2F+lwBEBHVKdgyD+UVT50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759323593; c=relaxed/simple;
	bh=oZLEnHpHUvZZqtEHzh/PHGAQ1cXiR++/2JGCjsZx1eg=;
	h=To:Subject:From:Message-Id:Date; b=Je4PG5FRDxs8Dr+jTYYRiPODTI80X1/jtx+xZEky5R9duFfRt3rzf9Trd9ARXk2w4XjU7IGs9OJCmrvUoT9rzyFZXtgZZqucLXqDUEQic3DChdIxWKC9jimTumYNLXhGK2JdZXOSC8ulPwW56VH+++NyIKJLvlLfscBBLA5lVs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqkP7OZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqkP7OZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF485C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759323593;
	bh=oZLEnHpHUvZZqtEHzh/PHGAQ1cXiR++/2JGCjsZx1eg=;
	h=To:Subject:From:Date:From;
	b=AqkP7OZbhZ05bJPiDHwiGp2uyfND5tD7VFvWd69Ur/tcjwHPWQZXE8a1l3Y+fodB4
	 CQJlXXpiBJp/d7OSrUjqBvLaOo5a1eH1TNNxCCFCfT06nZ8WSQgzqb3zjJ9l5qhjmI
	 LW2bzoOPhEgRHODv/mYi+yywjKnEqxGxQI5xraMDpdF6uqmXCnEAAbSvXsXz6XSy00
	 gSY78EOCHeOZWN+wcXhe1X5IXCG5FBd38RJseJ/xj5Ah7pMFXC7/FOQ/Q0oomr/oTp
	 yYFIsJaqr/xJ4gk1+S1Ymh0+HllhbgQtTXT69bAYln2l2heHOIgiW1tHm8GDc5Kteb
	 EbT3mu1w3AlYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B35DCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932359359.8692.9644141666682506273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dd0cafa7f721afc969648c720ca5d9df6be495cfe963dbd278ec545b0d816f
Date: Wed, 01 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759323593
