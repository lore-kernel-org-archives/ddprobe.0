Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517C525D8F1
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741725534; cv=none; b=XcqfCK98zUuHLrnENH/Q8HcG9SFwz7Sec3m91q5W21559vMUCJ9kxJiBUgSiM8cI+efRwzKC9OPL6hDSPNbAQ+OrZLU201LzlQ+TqjwprHoRI15ngxX8VH4tsKaFy8jfkaHGSYNp1Yuda5KOUiBq5yi/EIj3prIdHqwhdrfuyCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741725534; c=relaxed/simple;
	bh=Umm51QER3dko0BOvsMMnTUtsTN7lsinuaoJC243rois=;
	h=To:Subject:From:Message-Id:Date; b=E4FTgEYrJEnPAgNiBZhOZhNR81dEHo1QmFnkFrnl59FjYMhof8mxGEUfOlYnmTkBQPktTJKgY2B2/s249ZNNH6KSoqx3yagY0EQlhbCE46UfwM8gRxvZrRSc8bRcE80gPbm5MME59h0XVNi6KKFcnRSZbBXlbRXjr9Gve1HMRcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/qh4Ik8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/qh4Ik8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDBAC4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741725533;
	bh=Umm51QER3dko0BOvsMMnTUtsTN7lsinuaoJC243rois=;
	h=To:Subject:From:Date:From;
	b=J/qh4Ik8j68JtICpBu/08hw9wHvzO7uLyHPX5uqY1Us5k1G9ZVHb7WjpzEBLRdRZ7
	 N/B57iHZmcsCP+68+mb19MeTYam7zKoZkIA1OfwtdJQ2/L5kUPzpxDZlQY5xUTh6w2
	 QCVAYJuQ9n0XAI3V2+8ph5PRw8eNBDpWL+dNd4n0DwoJbzJrVQJlf0yMsdf/Lnp+81
	 5iLE4/kLdNsvSAvqRJ/gvLOW4b7L+0ty6wRHKa/1h+OHkZdeLgfluqZ69LkDwDEeXl
	 /YxLwvdth2sS+5YZQVoZ8pq+eowftAv7xz0FcpRDkfYJ5txCjtXQ0My/X7A3iHgSCy
	 +g+/QZIlzQkhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B57EC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174172553362.12089.7309315395168862350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec0159b2b980f2eed2805f346e814d5425d0448815883a4a98c72e15e3b86e6
Date: Tue, 11 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741725533
