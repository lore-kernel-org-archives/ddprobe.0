Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B2115B0
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA16C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669359054;
	bh=D0Dyhk4W4N4+XUsaT0HocSolumo1EaU+qfM/qzBe6Bk=;
	h=To:Subject:From:Date:From;
	b=V2jpCQ/5UNc0CCh1KTogm8H1Y+8Je7ldDfkTyGzoRTkRNju/N1cMH3h3J7t2B7arh
	 PRChVISB2k/R7H5dekTNb+fozs9z1xuialfgQ09+wfesdzw8x0fy5Fx5KwxYbD2Edt
	 Vs/8Joyolh3OSPmqlpsCxu8dTjTXTZrJFzlGMM38BRnAk4jcQvq3cCU2r7Y8YCMyeF
	 2m6YExJvar3MpCZ/4OzxQ6+9CcR/Nfc8QU14y4zkZlBdebeuuMsl8VNGsUd+ErGIfc
	 OKu0ceAYKjwgFyy4ng979m8SYVpUe9LOosoB+6sNUHgQm5Qj9Sqk5GnqLRGa59x4l3
	 q3hbcCCbe7aiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B37FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935905433.17942.11769728816330548321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3cf8e68083cbc58f5088c34a316236eed4b19db1c3add696f62e995d88f7b2
Date: Fri, 25 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669359054
