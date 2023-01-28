Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A523232
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE249C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674904385;
	bh=vNKhODjflkanOAp700RlAYSO0E1DcfaSL/N11ZIAZ+g=;
	h=To:Subject:From:Date:From;
	b=Hq8BgapX6cwKO8lhBW/+EH4wkLpIFNimBEBjr4ZX+KE6NBZwFeHtuthofMyBFxwpy
	 cvHmlGcVDQJZThDxlQnPGIG6/WmO0Z8dAt+6PQ+C1x+08R3FrJO6lGzLzDJagWBONv
	 deva6/uUOMzNSztXnf+zNaRb6y2UL2u6/ofiuQjEY6+c0ccIe6Xic1yGpb0IEkIRwv
	 U2ml3Dpb1cg/Rtpg034Msf+lYA8H/SUjDG2Z+bjJ/BUMEuMoNdRFh1v6HB0AmBinKL
	 iafy6rgIr+pwl1zFYARJdQDkeO4LHAiZ6SIYxiEEd9h+Q+iWNuefeUHfPk3sLzUORR
	 Trhhkpn5NgajA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C132BC61D97
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 11:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167490438578.32303.3851680384634225448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d43704dcfc24fc737a03fc603f274bf3e001a8ec6c1a9f740a0cf6805819cba
Date: Sat, 28 Jan 2023 11:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674904385
