Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374E9179A3
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777860454; cv=none; b=hkSTBliSbMXWXLpZ0BywTUEXeUQqrQZo5D6Ray4RZA/cdw/QoXysGdtdfKqDcLT7PjQCQR3ZpriUuPtJIW+Suf4OeeJLhMns6HqtGQ1j6iapL17q63xyXVPH6d4JfhOVJvwXtqVFElM8ZZFGGbvhLL7mm/DsXIH7npE6ViA4PqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777860454; c=relaxed/simple;
	bh=6WlX5K8ywJq5eKzrwUUZmpm5OJnEQqFPL3v0YlAgMwg=;
	h=To:Subject:From:Message-Id:Date; b=YdQDReVur0kq+Ues/j1DygC5BgQy5MxdJFbxpA4FHFkbqV8/g29wYmZZ12olVL/ZwQm54SevVUMbXkfYTS7Vh34KoyPrc169OHuGwP9r5faEL0FeEFPhzNOyjCnKsKJKCcQhEFJSE9/eByRfrJVms/TxEnYx80c45QWjh9mgDvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwdlV4Ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwdlV4Ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11A2C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777860453;
	bh=6WlX5K8ywJq5eKzrwUUZmpm5OJnEQqFPL3v0YlAgMwg=;
	h=To:Subject:From:Date:From;
	b=RwdlV4ObYIgBlH4bq+zdhtUU0M//I/mQJCCp1F2zRU/JGXrffjAv9MSqQNlGP7Hn4
	 x4PJ0SKxxaYJgR11SZ9JOSgDrf7+PQnm8PVQke/bq9yoUFXpMbnInc6w6QWARNr8iz
	 lEzCfl8PYO7XgrqAvBxTD05O6ltVTp6nRnc0vGj+TzT/7NH/TITj2nWYyIG3HMaucQ
	 1Dhfs62F4WU8u28gMwMWoCIfl/PlTXp5fpigvLQK5rHm1tgjS5cQGGOMLmZmv1msn7
	 mYMI09UBEUf2nX88AzMZ70IqJ6+KVcygTDkD3MOMz1dVAAy1DPlLZykNoialdaZNDK
	 p7IdiCPeX2Wzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF22DFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786045368.12815.3287278746211975124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0247cefd7782d98467653ee4cda93ffdeda92f12d29c28353f52478644b60d87
Date: Mon, 04 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777860453
