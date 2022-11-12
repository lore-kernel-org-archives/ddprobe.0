Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA377F5
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B423C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668226254;
	bh=X8GDx3Wr5z/2ojdQgQo8f4E6h6AHW9LSqyEBUZwiUhM=;
	h=To:Subject:From:Date:From;
	b=oo+l58+L3OXyNwmaVXinwLxXTO3DokNQhwP2LG1vuJj4O9uBCtNmCAxPtaGsd/OO3
	 Wyl6+OMZTGpQyeTiFnqZd2Filj2lZa/rZWf2jU+h4otHJCAb9Aa0k4iBgO3HQ08Sdk
	 dQj1zKn4PNqu2azmKS9RV9ju/Sm21jj2ZCb+MWCzIrHcfxBOHirSQYBFfERihlu+vC
	 rRXK9g7XRBEuAl0jWD4MA5rJ3xeaxEfSR76h4DV3X+8pPocOjBzEfn6dYNXHIxF1pm
	 k6mMjyK5w1S6VvvO/Heoxli5ne1GdkJXFO0a7ekLf+0fEvhdP8H7S/JR7ehuKx3poq
	 YAntT34meO74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8E1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166822625434.17062.15931103255731732418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f75559de69958f7d57536607757f3993b912b6efd0109738aebcf8f8831c9e
Date: Sat, 12 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668226254
