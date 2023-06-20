Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBA1156CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FA7C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687270928;
	bh=1cpeseZR71LGXUDZ/GoCqhCHEnMuIgivqjw8NAFgCX8=;
	h=To:Subject:From:Date:From;
	b=LWRhkxarIBkChJdCU6tdbOBJRg2QNASqrVv/5crtA0ZWCrIF4CTMR9HsOibQpATS4
	 OVbaCupAnMDeBVL+8clkbM4UqkY08H3p4ssEZlUFsiFbgGsfJ1VPmFensoT0hrthMO
	 DciUwIeCHg082HGdYS3d9P3hrSlnzOHzUoA+Aw1iT8VqrBHY5d2xcqLht3sSH8JJOY
	 uaPOUKlsfdUb6i1YNs+Xzc6mpUM/8mlUZMNPlbVNU3tGx8zX21RiTMa0fVFGe946U+
	 x81i2XEqa1uOmBkWNZsyl5XgbrDVr3expkmy2QjJ+l6Qz0k9fRDUuSnv8xTKonDGsI
	 +YUUxszccnDoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B183AEB64DB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 14:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727092871.7685.430231035875095858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d46f237a3439286100af7afa99ac98eed67a76729ea9d3b0a89e43629a95b18
Date: Tue, 20 Jun 2023 14:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687270928
