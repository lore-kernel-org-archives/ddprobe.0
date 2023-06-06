Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F05837B97
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 14:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A3EC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 14:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686063125;
	bh=2m8nWtCurpdRzNH6NJTMkQ1eNb/uB8WNcfhmlZWyOpc=;
	h=To:Subject:From:Date:From;
	b=t499jMDAyRyJ65n/TQ9u6lDbFmhNV2n9QciPgODNgUo/ORcLfEMKEn5ElRm8w5PnD
	 ldkyKqh4V6PqrbLn/5UGWIFF13bbY0j29MUhw/iBW7oqL76ki8i2fVEmXwoDXGgwBo
	 Zli7v+Og8lZkbU3aWbCtiZPrwvAiIAFm9eEgCEvbt4XaKUohxjcIuW83wVEs2zYEwt
	 GSDbZsi3n0vOfrvpad3LkqxOCqApXNqWAAWrHtrmPg7IkqmprVgv53/0R/iaf1cp6U
	 t4uaC6+xb67vLxTLuNB3bGpXLQCEud5uwLFOQKZQCPHoN3n9/82zQf5Bogrxr3KMn+
	 BHGOpzILnHQcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8435C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 14:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168606312574.15132.10427812443703438215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e0c2ced93c1ec4ed4180695a67f4be6be8e70d3b93c8739dfa84bef2b4488a
Date: Tue, 06 Jun 2023 14:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686063125
