Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBAA2560
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 10:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5332C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 10:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675852805;
	bh=3LvSAyOPIVhPvhk6z8gcpXoVoSOGmvWKRMjxyq9I8Qw=;
	h=To:Subject:From:Date:From;
	b=aF+Pku9I2hCxeL1QgRyTg2T7OYiiKiEGocse1EiXuT31gZAwaoytbH43YmsKmGZgV
	 rnlaldJwDyNdZC5HtchfHEaW8cPTlL4RtqEirB8JXn5BQX6uqznxwVZ8c8ZOaZVbez
	 YWEsfax0rYBRC3/GjDgcMgpxtKpjAn9cQxzW7/xnEnAbzU+Eckt2G1wTtnSwgvfiSN
	 W08sHSaI0ofWtGU+h8hyy0FqLC3W/927lUn096KDpjXLtlEtFQYoAomLz4YKmtYIEH
	 MZ2AL41ax7o/SO0uxor0g+oj8VzrOQ4aipo3B8INH7HR3E7aOElRV1POcsw4+TEPLp
	 AjW3LLuhrWvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1DFC05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 10:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167585280575.8124.12893570688139104531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9009fcf37f2437856c8a89f5e6a6ffa83dcf7801d87ec1992fb1ebc0f320f7
Date: Wed, 08 Feb 2023 10:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675852805
