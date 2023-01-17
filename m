Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDFF33F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FA9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673987487;
	bh=s83u/h7e2UPYTUMxB4L2YXu+zjWF/+Ql2WfrRSAeK1E=;
	h=To:Subject:From:Date:From;
	b=f1o7hHSgEieHJUsQQispYAYx+ujguUteKtanB0J8ZR0QJLgjo7QMRcJItOVyZ9twj
	 IzSI1Wq0nrURsX0windiZ9W5PgfqkuU5XZqXgNkUcCUPmm4gIH05ejNVzhxeuMxLaJ
	 F6ZdmWlZ2DFVtxSdmwYowGoKqlNkbGzhySmEyN6iwlnJmkAnU0dIqcj+S3wWpEcmNU
	 T4kLlSqFj8mG95Gjc4MVHqhbSFVO0qB7j5LtiOen/i2wQt7bSlUsFJs69OOwitHB/O
	 YUVy/OTnxET5QnsRr3PbClR8Ms0bSUb2S7tcTkXYj9nMuJ90NVy8e51+pay9qLrF6E
	 FCTEQ+L/JxUOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C6F6C54E76
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167398748743.27779.5184875492732438157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fda7a99e34dddb32bed696ce463940966d3416036f078978ceec731bfd316f
Date: Tue, 17 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673987487
