Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276ED380FCA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792254034; cv=none; b=OsLJGrCUbn7br1Z4QQApo1779dKxntHzAjc4HXiivEasFbXbcUAl3HMykNKP3rG+FL7l9o9Wy3Te1p522WlY/2sVwWyLdFaTeRob1hmEHv6Yl4bS79Phn7rnTWiQkqDP5JBGBXmVG+Ve5O3LHTgJROaq+mRcCZVopRC7wnAT92w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792254034; c=relaxed/simple;
	bh=2IdnnVa7OELgM22c3d1RxyRj5poLjkY/29CEPrtlUNM=;
	h=To:Subject:From:Message-Id:Date; b=CNDnQYvNP5NRIvGFaBdLDcj2/FuJQ+uhDU7SFKCjMXHiffzif+zISwNx2DQ5eeic39CkawFKACACkhYiaGRiKubcQbFDzfBQ+roPc9gSrMEbGbBLsY8ikVXMqc+5eBVwM9VNUb4UUjBhjpTjB18mjeof9sx9VrX8erXcE/e0H80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBXMhsJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBXMhsJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BA3C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792254033;
	bh=2IdnnVa7OELgM22c3d1RxyRj5poLjkY/29CEPrtlUNM=;
	h=To:Subject:From:Date:From;
	b=jBXMhsJsFQN+T4Dv8maBEKcSIxIDjGVVG8/tIFVg2EiYp6MJUmza8EwoCWffHkUZW
	 tPdHmNv+iJzwYVv18lTqPPvMJxBEWoGn/qxbu7OlmslAedTDBSMpokAvYKeOpKXCAJ
	 ziceyZ+QU/zLI81Yd+Dt61ogGDBv5YfCueHTPCPs0ddWL9uHI1MXX3Xx2PAKFssawL
	 YH68N3yTCnQH9ES+DJ35Ns24VD3n1Aa3R+Zrv7Jn7Flmq10HiZDSZvJzDO9sHTDWzK
	 xtAZU2qBHGbLtL5/N9eCsAb/USEPq6vbQvrcbhJQQ1lLdC5GlErBOk/P46F38uuTbg
	 fMC3fO20pjNgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAABCCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225403370.25939.14162988559661995228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7899fe7838425c311d017160622d7faaa940c6e4dde1ad893bfd2bc2268955b
Date: Sat, 17 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792254033
