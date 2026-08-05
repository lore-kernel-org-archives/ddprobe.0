Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0CE3EEAEF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785920434; cv=none; b=JIQpcn1Qnn7K/owfe5CxNYvt6FDflcjWsCNomFjGXshEGjzLt6uWzz48XAQk+xLAx2AgkPfbf1Ru3eHGaAPq5A8maOIcMe7UNDZAR3WJmJ+hlzvZ8mUV1JLyCXbx28s8hzamo/DCQe0PIqimzQ4V19ba+yJAvSZj2W4tXbsUIlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785920434; c=relaxed/simple;
	bh=X3eQOy9jAeMMqPBnKmtFtV50luAFcJ0qKCSsVeOqXPA=;
	h=To:Subject:From:Message-Id:Date; b=KEaOOU97O0timolBsLLX+pS5JpyFuASsRaP2pZy3R3k8kW+/KSbPuDnJK+4qy8Xux/szfVbpHsApE/StGqJlbheD6x74IFvZwQIJmfard0lTnNZzmCB5GnLdjI1ZWpxC1BJ/4J5LXkFfdnBLLZUCYAW/C6UefoC7MW/hP/txbus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBVwGOVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBVwGOVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC441C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785920433;
	bh=X3eQOy9jAeMMqPBnKmtFtV50luAFcJ0qKCSsVeOqXPA=;
	h=To:Subject:From:Date:From;
	b=ZBVwGOVhggRk7shfvwjwuujkjTliTNFEFI79a2OZKXyygzsi4W4Wfz+As3BbZOfb2
	 FH3/GziUeWlVvO7jFRfLZhL7069gt9vMiYiu/B1FvWlHX6cdgHcx4Qk7hycAw5kKC1
	 wwNvw2eqarKQFNKW2nYJV/6IU5E/e6T6LbFOHXBoUPLwbR9ZWFJT7MCvl8NbNNcYNp
	 Bcbqeq3BuJ4L8JkSScCyQcE4T5Hj5I+DGKJn0tWEodo0/MsKzKyEwHH77s5VjK3Pvw
	 1+5vbpqjtDIgMCXUxQtsryiwaVLW2o/+o0H/imIHTvTye+TU4AVRXbfx3F5E9rK01Y
	 5CpTaSDvvMAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B515AC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178592043373.19747.9464985722008214695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820ccdf328a798c2fc6d53618cfcbbb9f9f08d38639987bdf6876df2c275ce26
Date: Wed, 05 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785920433
