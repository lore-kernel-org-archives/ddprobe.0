Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68850182AB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCDAC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687875188;
	bh=2wlLNftp3I2PlsGb3KO5m90UR1yXJ7e7/6xyAeOrtpE=;
	h=To:Subject:From:Date:From;
	b=UXYZm+XCPFLehllvKrDAJLH7f54C1/tgRkurC6NWl+mWUG1170MO1yefOYxJHznCC
	 5Z3ee4VzDUZVYi/Qet0uYEOAzHHF/aBG28gowVPVNhk6Ry+LYWKYa4VFGo+UI7HVAz
	 Q4ITcWIbPutKN/astG3OFCsnOAzu5RN53xFav08Y83PkC2tFqLSR7cJp7X7eAHkkJx
	 l+coKdTiTEzvYaGjCCYNNB2UpkpA2hJWOUAgo47q98NKnL5+31r0KsdQxlK3A7YvXo
	 pAKowD5WLdOCvHIQniUNMw9y+kz7c/N0oY9t5O3jw4VrXq+fFYLaNm60jZgES23p5v
	 BL5pcvwP793cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17A3EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787518871.10336.15218918588972046717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cda6deacd1f71f4485321da28dddc3d7bd2b467681e3e1838622860b7c3c0a7
Date: Tue, 27 Jun 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687875188
