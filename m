Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5FD2AE7A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782338854; cv=none; b=E6jvuT00oGHQM2V4mj+7gVnw5Ohun/jS+zkJxeuuFKO1p3NewJ6rg6Lb+1+SOAYDu+i3MoI5rDjWWRD4BZDIynP28o4IxOpmuqc0yjD1XyxcHdxXP0f+/G1X+SXys0ynYZ/mT48yibWlEjTje9EjcKmInsCD6EdCFGHU92+GWoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782338854; c=relaxed/simple;
	bh=OjSlJLXhW4NWES0sUnpbtYE4ZWlvtxiNrWmH+uf9JrY=;
	h=To:Subject:From:Message-Id:Date; b=BXY+Gqex/MyRKaCjaQo6fpOFs2lF9Q89tvTZVNtmQlxMyMl3G8gPBg4pkWt+knQIetxLZvMiO1HRAtmXqjb5t1J/YMhS8CZ0KVkjiZsKwcInpnqXTfLFmG+oTlr0DUOS6PaCSCmHcKRvijqX9C8MISkMUdTfoJiBwoTcqeJjxgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFZ5R0+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFZ5R0+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25CAC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782338853;
	bh=OjSlJLXhW4NWES0sUnpbtYE4ZWlvtxiNrWmH+uf9JrY=;
	h=To:Subject:From:Date:From;
	b=IFZ5R0+eafheco/rsgTKVy1cDjrFN948UOgRJd15PlUQntR8QNHRItc4s1M1jQktU
	 xUXoBEDK1Xg2wRoSs2o0plIgvhsDroqtDSHUTlAP8PfKvPDkTNLTIvYB5nrBJSeVr7
	 ZQ3GLzFHivBPkJHWHZ0Yxpsb+YN1Q7yWy7CWk/lhqD1YIdv8heRDZLwzukwHKFiBej
	 M0XIb0G0onoRYd7QQQ20Ep6BBfa4jGXYZqIAajW98fV3mW78LI8Iyto8nKYkESVEwu
	 E5zlF9XTJN2dipl7zbjsDee29tKCs3bB4IQNB8d77hFf6fbMCPYLVeLQ1og8p9lESj
	 p/oy+tUvKUCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A4ECDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233885374.6651.14767468626037775691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caed498efd8859136f1144bc18a7a110b6e5382ab405cff0cb1f743aa7475a74
Date: Wed, 24 Jun 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782338853
