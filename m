Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DF9629
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBmjH9ix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74C7C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696553828;
	bh=Ffc+ZwxqOevwKfQuA2NiHh5A02ME7n7xYCd6mhbXc4g=;
	h=To:Subject:From:Date:From;
	b=tBmjH9ix1pyFVyewzJZB3hlGF30Pr5lgLUPioMi+ZlK51ftvv1sjha3bT/XPCNjDy
	 dU6MBpAi6bp7esqbsiaf9rjvK1oBkaXXzrBUlSJQ/1n6k6Yw9RookOdahUfauHanQR
	 Wl/KT+4dDRlX/iTh8O6r0O7imV8CrLvUkmuVfSJYNAxKy+09fUQXgGH0zoLTCKhUZg
	 JrR55zsndw6VdQPa5DZ5FeUyRz8ijZZsH6YajfhO7kBh0od0ayFYbuoviB33Yv2wtH
	 5cJmOZCERMgVZdL737MfrK692yNcm24HrZz1/OUu0toFbTLkYzh5vwOZBOWEgH8TLY
	 oYgs6YWO6LA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A1BE92FCF
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 00:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169655382866.21576.8123824123556409622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbfacc482608e49e5188c8742acf8ef3c18180cc85abc26521fbd6a37554d10
Date: Fri, 06 Oct 2023 00:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696553828
