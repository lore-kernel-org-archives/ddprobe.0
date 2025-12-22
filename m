Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F6427F005
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766388234; cv=none; b=XA2edbTlw+pcPOl9VshlQlK76mrBfcqhQTJWVsr52hV+s0oUxn3ujSFt9vUEHUk/4Pg23ioVKA9/j49n/fmz1C3kk0ESSbFobxu5aZtGjqFyHzGWYhHJhMEp4YpLAM0I9olZnYbMtkw0RMndPhA1f3zRkck7JLl2oKYjBEZQcnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766388234; c=relaxed/simple;
	bh=UD7q1SziN9d7oYdYVOQwQB3ff5Vc+nCMl2DMLb6tT4o=;
	h=To:Subject:From:Message-Id:Date; b=ei/l590Qwijvu/zoma28iXro47vZdMQtR374xSI11wZ7VsSRC5HVXGtze3YNGsrRFfwD2uCL+Ee0i5Fh/jiW4UchlFSVPyeJPzPgdD7vS/11lcP38Dk43uLw5bvVQTC4J9u1B3l9lIJ8u1xHeBxuWj2sl0m88PgosIUx4PWxHzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuCUoSYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuCUoSYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7683C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766388233;
	bh=UD7q1SziN9d7oYdYVOQwQB3ff5Vc+nCMl2DMLb6tT4o=;
	h=To:Subject:From:Date:From;
	b=HuCUoSYAjZfi58z19CAKICcZbPCElgAMdzuJf4gj3wGDB4gN7nM5frqMvddmb5jGo
	 XkzKFECtpbWIq7M1LUC4EPrfHCVaaWK2AwDBW7ZHZabBKiubgUMn6Do7f8To9JUmGs
	 8Eq+BXlaPufWvjcdiDWL13KirQfwGutKgjmxH7d5qMy3f2uTJlprcEUXO4el7P7Pto
	 7HPrOGxYUR15xbhe80STYdzBLyP2ndPO80hM2aF+8XaHvoZh7CfKbPDKIVUv5BTUvZ
	 eN4dV362Hg3peY48BmLd7+G1PZV4NRZiXwqTsFi4Dj1zOhdIVgTMTdb0gphG5UVtZl
	 bqWK261HphpyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF9E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638823358.3825.6632373263880555146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dace54415c05ba383154f8362c1b4f5cc78726905786fca59ee7c790607299e3
Date: Mon, 22 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766388233
