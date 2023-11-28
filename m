Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61DE569E
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShzSqPPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D20DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701154696;
	bh=9LD5lOW/DmvuSSPf8MDtqRvKd//KSq0XTuyMPJ6KiW4=;
	h=To:Subject:From:Date:From;
	b=ShzSqPPI0YbGNx3tw1luvSulTwNUEilQfPDUpv9P/kIwoTe6tl8eBRCfXwWgT2i8c
	 gIdHoUZ0kG5MtMWBXK/k8NGObovHTyX+8qArwlFDjYVBC/ijsqE45vs1xKfrlepSml
	 gKIJn0aGiTCULvs/0xV63MebTLeM282qmzOnZVqm3wgaStRM9bFh3W2OWor7K6Gv7/
	 tb0jt89/ZNbX/CA6y1q1xXslzYbIXyLnU5XcJP52LU9d9lV2GhaFBXM53QK8FpEwyf
	 MOQQre2px2tg3/g8koK2S1fCpIRT8NLIQpQrsHBsS7/vL3PqEA0eelrgGDNshV++59
	 QX4SNd4DviWpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6047CC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170115469638.29520.9214133443623091268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2faaf0624802ee7c7e82daad77bff7ea002da7d32a48305d3d50423fce48b1ef
Date: Tue, 28 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701154696
