Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EFD1CA9F
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqFxMDh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78099C433C9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701683896;
	bh=3uBncQ40NbJai5WdiVDlVQgEUC2BHlIZlQlbZuSMaRA=;
	h=To:Subject:From:Date:From;
	b=cqFxMDh4n+6C+84vbez3qvf/Kp5M3LPW+TpQvMyjEg12vDYg4AzXDGH6HZaAQZ5A3
	 9ErIId9Ayp6kA266LK4bVR0mfwsE9LCnAgPlZEptKux0aFdMnjFcOFbnYy3zWyvrhB
	 kWXo1hhpc6Afrs/AjfvKdfLoA/s0EB9kEghlMow0iHahFaFpIuNlhyEfsq/qvURO0P
	 HRimEF5T1sWLK7H+n69MuHVqqGECCYPq6VPo4826bDCAAH1jSYi+odFJX4RXvIO16E
	 hnRPAaAp4LUV7fhZnAyp4iSOrcY76M5uqi3srrw4D1bDo4ZWP+DXZ6TDAaGNYkS9vP
	 C3I2Ip6a9kRxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6118DC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170168389638.17475.11321358758311178258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e136954d2145f6f1840d53f93645c0961dca8174a984318b38fb11fa5582ca6
Date: Mon, 04 Dec 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701683896
