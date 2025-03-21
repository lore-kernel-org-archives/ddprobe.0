Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3947722A4EA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742573394; cv=none; b=QgLvINdeHe1bPx9f1w1k/NMdrvDyYry7FAqH+RFk6GF3smsLY8tcs1nym5emyoyS3jP2+P+d0NANcTqa/BLrDYfFWzChRdwtM7Rz7cBFiJsPmzmwif4ANXOItZtDqaBvn5kUXnJc9uozcURxWrwZ8ZfdG9fbaAtw049ybfkuksY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742573394; c=relaxed/simple;
	bh=pvoQ80ltHSZL9X8i3p9HhfAZPl2uFZSst+XtVxRlQLc=;
	h=To:Subject:From:Message-Id:Date; b=ctHr6GKFlj/s039u4PzctHEz8ApXiXIMlRb8/xm3zHlmRVn0ypK+R5yQ/j8FOOY6kO58Dw00Ln2xzLPHhZwjAUsdiKf1FwkNJq/3XnNYmObUIOBE2TtEzKBNQWsqG2YU/2t3gJ5k5RAd66+cjQbGvOrnrLEVkVhMma1cQJtgYmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwrD4g87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwrD4g87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B088EC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742573393;
	bh=pvoQ80ltHSZL9X8i3p9HhfAZPl2uFZSst+XtVxRlQLc=;
	h=To:Subject:From:Date:From;
	b=JwrD4g87cdyJBRSCIu/Fy3YUOoY0b7DxL3CjwHf2x677THxNt5+HTdGheBhhEVehG
	 /TXvjlO4PdZi1KhNLGOB/T3PoTCSCXJs0QGcfcDcq+FRrh91aA9kfj6/Ny2kFVlVwd
	 +KpvJTLawXbv0Rndle1p+AQRsCsFf95o5lR/Z2kpF2qS1OFzBwifWmFkZ7pd1FQRE8
	 GZ6Ys7xOq0aHMz8BToylDcqIpk8NoHSEZ75pnKZvUF9VXng+w7hdYTpb789KJmOlpL
	 p8i2YAUaqY0rpqmPpPETIjnFgkVClxHFnOc3j8nz3l1v8K0e3LDgnTvV4Mf7f54s6W
	 f3WLG23dmqKdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A35FC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257339362.19838.1734129476362762948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41219044926cb71f05a0324a7bdfcbb592b7a44b3e69d49e0ba259075775e3a7
Date: Fri, 21 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742573393
