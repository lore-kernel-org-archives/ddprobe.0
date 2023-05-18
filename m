Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44424137D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 05:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F079AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 05:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684389366;
	bh=eehT9ingxzOTZJilbE7nIPD1cVovrW7DyI89AdtxQtw=;
	h=To:Subject:From:Date:From;
	b=hs0ENkYvzKRzJak4s51oUp5iP6RLBLW32cuRMSS4HZUU8xkLhMEBB6e3i6d3wZ2EG
	 QGRtix290kDjJGZfRrn1VnoxhIZaMR7T8PjLfThnUYN02t/lmyUCQcXYvEM5hAnuZ5
	 MBT8RXZ88cfktmfQwn8a5aVf2Eg5kL7hLSgtHGT+hFYUphNRgUthTd4XJFmXzwJ4OO
	 2l5MStjxC2h53fHcToADkiJ6DPc5eapzZZjBjl4HTIocntJ9eigRcSODFNj9QCCrvV
	 TNmFrrX1wRkDl0xxMnr/8MUHB6fVIZQCT37D3XaSE26f+pQ05NcC4vwH6XExbicNcx
	 0Rxy7MkW/oDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5D3C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 05:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168438936582.16985.16876651365400483213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99eb93916d4a139703737b449cdc898337f64cf16dbfc2125837db85ab293be0
Date: Thu, 18 May 2023 05:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684389365
