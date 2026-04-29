Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3112E154425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777441054; cv=none; b=bycqI4ycdiUqPPWNibgqFWTZ61Vjh3OV76o5sH2i3k+q1yqVdCRIkFKzigCDmpG2YFcuLNv6+9hao6qH3Yi5Lq7zlo9ABNHPi1yi4A+X4jL/ub07920C7AcQE8Y/PzSG6Xl0SJtj6VWPDzLG0Ae1gma50dJ1b8UK8HOrD4loZOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777441054; c=relaxed/simple;
	bh=o5x+qlu8xDn2uSnUQ90gGO8pB+GfNlgmC3Z7X1qnBaQ=;
	h=To:Subject:From:Message-Id:Date; b=I8FMG9q9y0gcqPP00GJA/MF9X0iAgISlBSN0InNvYaZ7q5Onln3yFUxDXVTiwhm/o703ruIDUkNbaEa1p75ZbzeOYzBv4tJ8y4Xu2vwFk4TA5qJjgJDAW2w5B+nP4U4c8SzoKrYKc4ipbfylkwk2WUPKORS24Wvn+1dKTU6dBTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cH/qFw2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cH/qFw2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD6AC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777441053;
	bh=o5x+qlu8xDn2uSnUQ90gGO8pB+GfNlgmC3Z7X1qnBaQ=;
	h=To:Subject:From:Date:From;
	b=cH/qFw2DAZKdPnegXKWYL8LB21GAlfQjucanN7MmSmGo5Q7fVMpjICANx4OOZzHb4
	 7mB0zbWiff0ezxv6cTS3GK+QyLWXqxIzZvtVUGOJzxlKfnmO48rszdD+9z1lwFRnLv
	 GEuGKpLoMmWzyQgvooHy1jpfncc2Tqauf9XPwDcMfA1VzG9zALAcFj5S7+HP7OR0sv
	 F7IntyNxQb3/Bp2B74Ok0Ywjk8IbwHT+vra4mEtqA6NWB9+xQYWvCHGppPtgS32xpp
	 MGmnqNPqWzKbuwUEEtzWQka+Ui5r7FX9/g1oRCfCkKbdmZb13szf3pg7wr94pnY8Ia
	 /yW/ukbLAcVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC6FFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177744105369.14909.12455399939762377319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351cfb11c508157f77de21c797a51679ff797756c4084b7211a24b6905514df9
Date: Wed, 29 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777441053
