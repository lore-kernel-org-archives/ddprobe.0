Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5E82BE053
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764101574; cv=none; b=mvms4BUBcs8JcxYrvxYphYA3VgyiRTqjXVSubXhwE8+6QA3sPeqNu4lWG87aKn4cEbf289zeGW7ucF9plgg4CB7UI6ZffU2i81Z+AL3Zg74gF7F9+LoWY7xxQ3FEAgbu9tH7clsPCZ3L33/Jy73n9b7bGRLImHaT1Mp+RtvFEvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764101574; c=relaxed/simple;
	bh=XWLtyk10q8gVMg2a9Ft6Zh+ZaVc+g3dINqlxpW40nyQ=;
	h=To:Subject:From:Message-Id:Date; b=Frp6hDZDGbVHmeWFrHYkfkB0+Hwcymy3eIW4+i4zgy2Iiit4JKJeIBzCjzIq+gm/YO9GX+Hp8e714FSgyTawR6XH4eArjqMIeJuToGlpkJO29a0L3qrK0J4TbbRaZUKJDmzrRV8k4M3d11hyxbx+vUrSkUgt0f9JcKbSY1WkTYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfLw5wXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfLw5wXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764101573;
	bh=XWLtyk10q8gVMg2a9Ft6Zh+ZaVc+g3dINqlxpW40nyQ=;
	h=To:Subject:From:Date:From;
	b=PfLw5wXVErDWmPx9yE5Nb7nbNRFFQXV1T8QZ2UGGSfvEQ+o9P06aZDupP4shfTbgi
	 sy+cXh85ViJHyFDJIa8cFuzb/T+bj15MWM3wZB2Rlr0ttb+tIYX/EVNmWyTOC/pKZ7
	 N0ixxqyj/dh3liR2BxabX8yzJ2C+dcXheEcdZOIsDoOAManBnqxT9tRVxQ3q7uQP9i
	 8kRVgVQZSoDsFgMmdGlCcE2ZwwF3qKoCW2o+c8QtoS0v/2BJdWgu8WsjzZBdjtyoDl
	 rHJ3jTo52sxem4X/42Aba6ZHQemxM1ckfwhCQFIqkVhP169ilKZOIhYQv6syUPOizE
	 aQ1IXIuMAN3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9613AD0EE1F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410157360.17813.9599320576397824904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5016ceb5a51fcabc291cc0d52eca47f711761b3079f2d5ca9a3d11ff1e4ee613
Date: Tue, 25 Nov 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764101573
