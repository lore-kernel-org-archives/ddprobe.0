Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C79621D5B6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754425194; cv=none; b=qDIMo9roCvK3ujbH1N8PBhWM8UG/yjIB40zfHjPndfjqoBgRBkpOJP5n9+ZcQgMpXWp2sf0PEig+fJ4CX+/sGQrvz1+GHwQj7mo2cavuLl1UZcjR7zQDWqenHRgBHc5HTj4TKy/i1WBtMx8CcIZ5IQxUFicBeIEpov5KE55YSJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754425194; c=relaxed/simple;
	bh=uXX5HIne2sV5CWhhUmiiDC4aOE7iHmage+vnv8tnveU=;
	h=To:Subject:From:Message-Id:Date; b=Ml4TNh0T2xQ6uituQbVeQi0bLnbLqIEjyfZAWtCevBq6IWhGUXWJthdcWCb2/W8HB9n7J0UvT9OvqQK6OvGsAH4CiheemOB0NmUBuNvtCby+DgCxHzw8xEZziwMERVqfACsXvV+hKazp0XTxrta+LTeogYj83xRaTkKScLO12Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmL8PrFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmL8PrFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DD6C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754425193;
	bh=uXX5HIne2sV5CWhhUmiiDC4aOE7iHmage+vnv8tnveU=;
	h=To:Subject:From:Date:From;
	b=nmL8PrFgkmbPNnPX+KI7W1q6x1nG0WUlEpSQipTzqVzLaQ+aLQz3ELGGPtseH+KKB
	 I2Yl54sFs5JTCWAFExcA2t/J4+A64bqEx1L+KLMTusjORsBIQPGdlV9eJOCOBpD0tD
	 q3koSz7O3rINU6dnxpECIccalozUZ8tUOJOx9xOZCTg3z7VD5OaPwZT+hGH8qedsvc
	 Z9fmgJ54Fmsv136Fy0aD0aNPq4Hc16+smT4Mg2cZv+zjVV62uajDS8xljf5XEA7HHr
	 709KWYMrWUUPGwF9i3a/S9UEEiiu5u+TV2FiuIoxrM+xy7B6wV9wBOcIXbTYQxjBxD
	 GvVFSHOK1U7Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F128C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442519364.22180.17023157490792303924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848ab74c32a548586cb37e0142b620d474a2887e07d81fca972a26ec44902d68
Date: Tue, 05 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754425193
