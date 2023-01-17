Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19AC23A8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D9BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673956287;
	bh=div4usaabB9ToCJVZGCxMdhzYEFenn2f9XMpoUeDCxY=;
	h=To:Subject:From:Date:From;
	b=r5ieJLfidClqJT2w9mUhqK3R1dN7m+J/feKXabN6WQKEHDrbzck9NYMH4M7C1KTD9
	 rkD9+LRT49kGCaaVlCxHdjZtLhBjbFmP5LH9LPCSnpL4X+HdFMGBzuT5BqA+vRBN5c
	 nxNY389T7H5htrg0/byChSNIZk68TFZFk5v3N9aBygxo3X4WGQvgd2wbhKB4/1DfeH
	 /7Cy6olCCGoSAgkcm0hzpsqofJDsSTltb2B5Y5M1Wk6qCEFE38ixoO/EtDgtOkZSJH
	 YIWzg3N63g4n+qn8Zw9hbCXzm+70tjEzj7W7x8E14oidZmxad67rNUO7L9HV9B+dRx
	 A32u87pHp3XNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6097DC63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167395628738.17775.7708233634211005495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91aaa81b37dcdb869df9d4acd9044a6628e1192a75867b40eac41a0ba5b2e4a3
Date: Tue, 17 Jan 2023 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673956287
