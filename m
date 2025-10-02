Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29F334BA40
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759436993; cv=none; b=MRImAfU+YCIr5lBYHp862MK3hJm4pRHGXDuggBfDXi2xJWjrTbXd3BoyRNmP1IMLwpmsQCD1OxmCRH3MECzOko6ynIw1O+eKp5Be8EQzAQtPG6lhp1kcl2lMvNno6QaGozQGbVtc0XEESEvtHHCqVuBzpa0US1xIWMonjlrc9SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759436993; c=relaxed/simple;
	bh=rx/bRVyWUzN2y1Ebz8ND+I/EB2n/PlhoxIuibsOB4/g=;
	h=To:Subject:From:Message-Id:Date; b=Zm1WObrNNQ0EP9Ew1v/Hw7ubM3ZVE1fDlExnZlqGYxWCNTtv6Pr7VtRjPEinUM/xNL+8yo0mqo+2CZOkI2AWlYEVeTEgubqje1vxPjAUuixxnKKtoycsUbMwIG82XX08xJLzhCecr48DL8aj3PiJ0qz3A7CMyMJjAEZQi5SQ2b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTYkBOBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTYkBOBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADD2C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759436993;
	bh=rx/bRVyWUzN2y1Ebz8ND+I/EB2n/PlhoxIuibsOB4/g=;
	h=To:Subject:From:Date:From;
	b=GTYkBOBuqU+HWnIEUBcb/Z0sE92Jy3YF/XOBbUUYFZu3S35IODrr0PN9WfvURsSl6
	 mnoWJhYcaBFhiri0/FUOlSll0o2nh9ZkYOBV/CFostriKEKx50LYMAQmXojXsZV/aP
	 2VIlW71tj3Tl5GljPBEZs0NOs3Fr+1uaEt5e+GyToVv4nCCmAvZxYokbqbRWbExpSS
	 zg4nRyUNXaJbma6t30WUz4m6cL+c1GQWuJUDTiZQmR9eqgUHNFVyrCxmOwnLuYDzsX
	 cguFPn/juuEnkAygQHlzA+gga5SsAH04x4JNBucjuj/SjW6XW2WQNHNEC8ztufdpMf
	 rPC5VVpIpEddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AED3CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943699361.8994.4854809734256308594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd5648d81017ce9dec6697d1f8e4ecf9098bb3442644d8918267248487fde6a
Date: Thu, 02 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759436993
