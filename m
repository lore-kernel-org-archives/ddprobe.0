Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6E4171E43
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742760596; cv=none; b=O3IVPoWHOCxmHQdE+ogzlOmow4NpmNTBKQ2ZhMxZvAnIgVZ/UJhqUI+2cEuezOZRf4LuHfj4zXexicwA65U55IdzzXWZk9OtTYaBW48jWwgfQ7V0dpkZhyeW/WgGyNfO+yOm/C+CDNYDMOQpTy3sJys98nIWx5XY9jdIkveSYWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742760596; c=relaxed/simple;
	bh=6ZVbY3anjRseyzJcM2X9a8id7n1DaVbD4gsKWL3NM40=;
	h=To:Subject:From:Message-Id:Date; b=TtKLCkJ+47iLqO6LIUoX20pPa8rSE5v0QHsBSgsjqPTx5ST6/NOC4e0iIMQCWHp1ILaBtlzQoeQHIsqsxJC7Rz3hE1Ka7t3w2GqCjSaxfCVV33KNNqFYR+T0Egk3YP40IIEpLfUto62OMCQ/lbS13mNAJJGp/pPyxvCUE8GJ/Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAVYY/nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAVYY/nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6BAC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742760593;
	bh=6ZVbY3anjRseyzJcM2X9a8id7n1DaVbD4gsKWL3NM40=;
	h=To:Subject:From:Date:From;
	b=cAVYY/nqUW9kw2R0GWs+CrLPYtZgQilKSCUf19DBOPKYf7JXFhMN/0le0Wd/ToEUt
	 QaHW9c3qeuWhZFjZKDf5AinYl9tXdi7lTV3ycaL4QzSuhmpBkuNc+OhfWZYJhDuC57
	 bpwt0i+X64jt1RbGlFsPYAkL2w7QtLbceneT3oe+rxaYBKNq0/33g0nPdHZ1x6MRNi
	 ti+fV1fPcFACWg52qLCZMjfUM85ekIWDlHGS8w7wPKK4ppjt7E0KGRiBkzQvV8ffrt
	 6j9yZ1ZLWXwUL4daH1sTzPuCRwv+UyTRrcrdajSNv5ka7yOHXiujOHofKR1iIqfZMv
	 03xnANkmvWP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90316C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276059358.25315.4005648849150330930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afe9968bb72b7dbe610de9022b562708785db7f61fcbc2dbb2b4d326b8d0ca9
Date: Sun, 23 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742760593
