Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7F82C9C
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69EA7C433B5
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663245053;
	bh=No1a0k+tvdKkXzOIcn3fBXmehtS5LqJQ3FftZgkU8EE=;
	h=To:Subject:From:Date:From;
	b=HYFbAqOZlsCjnJDukSMLQ7FvZs89Cl5nsEcVQ3pKl+GjzlZFVD5cnJSCrAXqpcASf
	 Lf8K/PrySYY3a5C9T1bw6awJ4qKeuTZRGG6GQGvLNTk5Jeryrzq+XjPD1+KDQKh9D/
	 rlY2ZN37LpTYQXtigwt76YrE5lpHkFDZRY3a1RAdrbqRd8HRn54FJkaQD5oBs/rzfv
	 0J4qYCB8J7MpJjNwuCkR8oArtEbo2hUZbEAwe6fopZJwa6ae9Gk8hi8lS8xkQWHWeF
	 S971v9rnrAyHgIKirgdcjU06fRIE3a6I/QVW6LgQIxC7d7hhi7OdnJF9wP488Y871Z
	 DcKDXl9RE+m/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6A9ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166324505331.10664.11523820729565724937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fa81ce1e1b86262694b3cd66ea413e521663a2bb5d48d4ebc34131d8623efb
Date: Thu, 15 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663245053
