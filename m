Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5A717F1
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4932C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679732525;
	bh=jEmIEea6wmaqajJVWQyBLvoB8mFlw8TyJyiEtjeppCE=;
	h=To:Subject:From:Date:From;
	b=IgdxHxemEFitKwGAZLkCvp9fn0egghhBG32w7ybuci4A4koHTg2LL1LsUrFH7Jr7I
	 y6szBqx/FHXB+T7RFPYwzhwWznwTPQC5R00SWq14Ls+x54ODzTYSyq9Gg6FbTlW6Z5
	 moPpXy5kT4WrHcS+/nfbR+/7ZjGNEoiUcZdQuUfCEjP1zzBmr4J8l2YhaMZWKLSA2a
	 ElVL2Ci5gFFuOMhJPwyR68q9XatW4JvAXXsOr7aPGIq1SIssA27JirS7G0vNh/1Rzk
	 SfUWWjDpBOpOndph4+tv1vqj93oTbLt49/ldknUWMK7m6xB/AzNKnP8vKUsISj4J2R
	 t3hqedDprPokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89B3C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167973252574.24651.6845968019076306609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9ede59d6d3cbc16adf61c05caac5e1ce5727e9310ad1b6d40f1446b84f90f3
Date: Sat, 25 Mar 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679732525
