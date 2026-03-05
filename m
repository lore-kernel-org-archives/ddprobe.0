Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125F4296BDB
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772691294; cv=none; b=OHv73wgUOeIAPRZ5c1fvfLkftmBN/qBH9LV2Xm49MeWuhHl9pJs0nAB1vKj+Fy5kA1QUvKqxnys/jcph1lavCApl/oA3e71gNROPAZY9D6GIpKwlzqZLBWALTc5EMIrBuPOqAcN1EJDPTDwyxVUXSxj8AmFZFRksUiGFsEn4ATI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772691294; c=relaxed/simple;
	bh=P4Pfb5luVKtSbjp3S4D8X9X+LYuJ0bqW+fUrivL5alw=;
	h=To:Subject:From:Message-Id:Date; b=pqFNYIyjnHqKmXp1nL5nhYly4PTJVVKvJYg+E/1DfR/RP5Ykju/Dy+My0sw9VCsLE8gY+Y2//zcn4Eeq+7Dh45c9mKBFJLW7BUl7kK+HEc7J0EPLk6OuoNrD6S8Y2JIs5RjusLYcRZtJ0PaOhs3IV/9mEmD1B2HPauFf6uxjKdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo0766oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo0766oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C1C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772691293;
	bh=P4Pfb5luVKtSbjp3S4D8X9X+LYuJ0bqW+fUrivL5alw=;
	h=To:Subject:From:Date:From;
	b=qo0766oYVupYS0Rsm3JOasaT5QyAE6GQYk830kHky5dcvSAjOT0IHF11LZG4zkK7H
	 jGlW3anktf1dpYAcswsfe32fLtI234ff3xJDowU4KOxSITCVP1QpKiH3kFfGeiKE1s
	 J4VwDEcNMntLVWZbv0LFsKHc4vvggNhKdxgF/KEPNBe7Sxm1UFjaa5h5vDL6zTjiVe
	 yNzeq82IowpckffVx3+ghtnWWqq2Eiv32XX4HYa0kETujWnBUVTWcXYMYvLBQU7Qfz
	 XLD3raR7io3zaqkLyFiYPxj+1uVEN9vj0jfGjfZ7L3jzMisMdRU7j9/wo6bbjP6vUt
	 Q8G79Yf/4l9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD2EEF305
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269129358.32277.14101440241481837299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f3eba430bd10c7a01a8adf7e262b39cba1bac590abc9292d3e450bea2ceba0
Date: Thu, 05 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772691293
