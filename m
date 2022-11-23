Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26041C31
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB54C433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669197054;
	bh=8P/HfWRhZmfW9acgqs7rYXNzzR+6I45k3FDKgdBG1Ec=;
	h=To:Subject:From:Date:From;
	b=ba1fVXk4IE7vgbhlZ8JOhegmWzPZ13Qq8+C8QVyQyEXgqOHyPPyAJplIG+OvSRVCE
	 6e+sIh4tf/uuCSRXgrulz0tcIAjN0CEhm583LQxHn0lkH0Bsa5wmZ1p0joBpWAOr1M
	 d9qMwt/Pyg7rdTqQJ8VDHMAWevxsRdLbXCxYrRXvDTAsaAtQZVpIMPMzmFIHgUVmgx
	 nNCMQHeR0oNau9UdV7uTt1wTFT+hLO4ch7oD4DLsXEaz1xrW1jBTwuYflwdfuZDCgc
	 g/jD17ywRHrRAyU/s3KOAc+hhyyo7Jbd5VjOV4ywJ1MPQJSrbooI9Bh4LJvsEQKEA9
	 gPMBwWlwC9QZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EF0C4321E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166919705432.3348.6061004969425230583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8ab11ec14b0b87c3341bf138f7d61013981767ecd7af1588065361a3673c2e
Date: Wed, 23 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669197054
