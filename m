Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC80A25A2B5
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774633494; cv=none; b=lR4Le5L3Goru1+Dakq0oqDJ+ShsC1btnrePJTk9IeOlaEQiQ9YhLsJvuamfRqLaYX/qyVIimCaHX6n0bK1dA11gFcE3aRQerIo71fY2VgSe+Z9QY6QvF3gHGtAMAJVtM2QjEkkBubKRKnFuxAWazinAJDsH5QamQ0BkjAhkYdFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774633494; c=relaxed/simple;
	bh=AjAF6njJPsNw2ictrmsDXsykaVXUl1bG6IGg5HwKH5g=;
	h=To:Subject:From:Message-Id:Date; b=g5CLJOBfOxmp23Z4neWsO3Npn7oOXwLvwrKxGUORyDI9oOKn5DajrwaC4+F2E0iAJeY02OlodxWi5Vn65e2EA5U+DXsAA3YqsgBqK6W1ayW7dhN7LTn/vfFD4bqEWTx+j70/haSrmNk5Vu9+A9C4sjE6bfmDEZTp0MIokvVoJsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFVDFFkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFVDFFkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17C9C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774633493;
	bh=AjAF6njJPsNw2ictrmsDXsykaVXUl1bG6IGg5HwKH5g=;
	h=To:Subject:From:Date:From;
	b=FFVDFFkQWCyQ+86kjHYc39q6NOk1p/Txw9mchh9PEMhhVly4iCaRuH3Bf1DUhHple
	 mQB7Wy0yox08UG6WXJvi1v8JrVlCsDTZiG3O4cTbTcLH/vZT3gU5EBkzfA92wVUpGh
	 x9zKj6Qoi7kqTmLr62oJaDALRqyRs+qD3Lz4mt7ycWPo/jppdyI5e1ciyQxforawr/
	 JAjTjOQB5yEb8G+CDUir2nrnjKJzPpwrndd56xjvxzcEb1Ca6a7P3hCvhwjGtkTLCn
	 sfNaycbf7hR5KOMjWwTztnLPExnFstl9dXqGedQCeX7N16xzaCbJvVEkv1DlH6YVZo
	 UAYr4Gn0EWrkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918EF10F285E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463349358.25188.14656189835505132874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b41a1df0d34276d5617aa6a0aab12d20784313cde7dd2f69d2ebdea71cd4895
Date: Fri, 27 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774633493
