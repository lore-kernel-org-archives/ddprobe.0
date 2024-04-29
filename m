Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4DF13FE7
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714375943; cv=none; b=fcs7qTgQJg4frMBVOS2zdaxY9b27jAgmF/Vc+JZT5AYOUtrybvi+XiBlGcxzIfjxhO0dsMc2GEwQCgnRsKghzAOwsCXG2fvmKX38VowOLSSX8kZkgfCGHM7U1PuZpoaRukaExmbd9Fvhrd96Ds0JdYFMgnd9sE9bUsjHOr+YkZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714375943; c=relaxed/simple;
	bh=TUyWT2LBbwHy+uKYaoF4zMh9Y6GfpnTaz/DkMvuQIDk=;
	h=To:Subject:From:Message-Id:Date; b=cttIQtp8tFLq3c0PQlkha8glMoRSzG/cnpBwUSQMNxCmfydx2HKSZjF1d6G4MKT8tYc8VDOBKkh4oSPZCJ5QJcgOrPxtY/v4jX5tdA6AyheoJD4yPa/LHjjBJSomzVLGEuwZ4qTygHuR3Ekp7qGVAFiuTiXyxpFJvIUIrK1ZG80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6dP4eYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6dP4eYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D536DC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714375942;
	bh=TUyWT2LBbwHy+uKYaoF4zMh9Y6GfpnTaz/DkMvuQIDk=;
	h=To:Subject:From:Date:From;
	b=K6dP4eYxkUCIRULOBTi0YnMuTiJ0Xk8P70KKTPs+3hvO0yR6DqnJVlXiqOBRXm4nu
	 29s1vGG8uhyss1nv4EmzsBmi4meZBO/e4aXgxnVN6HScOphmh0YZCMLZP8TQyN8QUf
	 nkEwYS51cSRha0CEKRSRBesnJvmBF8OvEI6JxsH3eCVpZc96dy5LfZO2qkRt7g0q/t
	 lOblZ+/TtNDTDfQNw7QAklznoU4Rv4jE4ej6s6olUfuXABEnWfRHlIixvCLXqPJflm
	 i4I4BzTaAPVSdOYaDclLHz5WgLrBG6RhBvmSSt3fUuN/4au7LyGzsO2Chp/R6qay1U
	 vuIb5LYRDpldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF85C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437594277.5366.18114104166658353846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e970b648ec543d2f01692d61698ecefba190c8bd199693a65cdcb693402719f9
Date: Mon, 29 Apr 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714375942
