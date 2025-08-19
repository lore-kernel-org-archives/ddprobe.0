Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CF529E11A
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755595194; cv=none; b=bMrp/mZlk7wM5At3InD0dTAqeeYDj+8VsyRos5T9BZ6CJkNZPqSD+e0or411psex5pdls1mhDVhJJ9RoHvB7OcC6JTlPRmgAmhTsLVXRGiMgJrF8UXZ5xnu6FXz65Pt8/YxECWiMzvspi+5YghQl55xVzRotlBQP3mJG5gtF5P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755595194; c=relaxed/simple;
	bh=X/RY6ijnn4xFdhpiHFupr1DpTKlX8Bjak4s2aI6IMFY=;
	h=To:Subject:From:Message-Id:Date; b=pBzFGYfwvOb+HeZtpYljc03wGgrK4JZtsuOZdK0uQIGiPjPiNm32hRpclwRZ6QUMmDOkyU+Sb2pL/0/1xJNekC1aKZ3lrqs7qRu3LmYiWutp2hPb8+sC63EpqZKaEQUxqadw38rjtZqIv8IBeRMHy2lCGUCB5PkAPYBnSnFywws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IcRQKJ+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IcRQKJ+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C01EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755595193;
	bh=X/RY6ijnn4xFdhpiHFupr1DpTKlX8Bjak4s2aI6IMFY=;
	h=To:Subject:From:Date:From;
	b=IcRQKJ+p4B8+RsYQpdyCdkXniV5oeNIEouVy2YhxQI+tI6FMHGqb7r/UUdL8etkD+
	 jGb65Djsv+3D8L2zFjiAMPBtbqwo0i1kH8FU6zEQwXp266OsdjmsAWBBjGBbP+BAUn
	 Y1QOAY6GHH9GEKslRdfTBfSWYxGct/JMHyNLV7UnC00Rcdir/4cdXBow8Jz98fVGLf
	 GF6GRmqczX2Vpkjc/HnnXIHQkp4yV+bB8U817xupxCYnv5a0/pflyPvQZk+ciC9Xnw
	 wIiK4JCln29xoQoTIHwTJMf0ieLeV3TGLnviQ7Yl9mekwPgK2wS1MazkLk67uzzxlq
	 UkOBAu0Oa/Rag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E600CA0EF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559519357.26399.9252442623876712324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fb56e6fcb31485d909fb152ad4f213de8558cdc520db4a608a23410d880588
Date: Tue, 19 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755595193
