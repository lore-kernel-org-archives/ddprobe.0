Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C85628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E45C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673578287;
	bh=x6ZUf2Tfpcyk8J4wvelz/y0ir6PKpw68Q0nk85wXIdg=;
	h=To:Subject:From:Date:From;
	b=PLgcfZkOpnMEQS5v65aN/LAaFv1MkpecidCY4Sglcz7hyR9n8UhfASJhKYkFnsdaq
	 KUwJYtlGtmgqGsO9AJm/tPC4209C821fw4O2+SjZaHXhYZY9uEDeZK+mKDPejHXrpN
	 G+ZvTkHiz0eIY2qQ4bQAqR4Ab8AzCTT+8JDDXaMk9ilsiKU3kYMbXqiXJfiYmS8wVq
	 irIimx9CLCbW+ooaa7+9qvKeoqhSU0TDsWrPgusoqZY+6kky/RSuPH8vXKNdXVId0T
	 1XeF4CTYm/WbzWmahLjEtAqlYQaHdGrbMhwR3F7be2n4S+mLiVVUAaoi6m1UyIzwcP
	 I5sk52/nZ/MTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7211CC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167357828745.21706.12729230335910832635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4196e9e7abb7ec2d78704128c58806496154bb94b6e72e8412439a6ad12acd50
Date: Fri, 13 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673578287
