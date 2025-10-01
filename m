Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A2B1DED63
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759293594; cv=none; b=oPjo1wIEcXBQ8fXuuHBycSP9Zi4Ubnfca8KaGqDCJKqMpnHMc9aHL/oQif12qSmRUJwPqcxtcUhgfRlbMK0IPEXaKNXIJ01XNyDYg7+TZ8CLk0DwUxpJ3LoyRx38oRCUhu56adhBK5FUiHK8vm1WO4JQwzsDMltdhBwcrezw+FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759293594; c=relaxed/simple;
	bh=Q23pO+5ZcQthgE7+1S68PWeFWI+ixmb/H4MDfvUv9Tk=;
	h=To:Subject:From:Message-Id:Date; b=uf2pyh2O7DttO+TcZhXB92QV4XpSWoD78axv5q+5OPVo8pY5Bb+cf3YRqEmwU+XxaOFzdt1SJMOWEsUtVkCrwB6TL9DOF3KA1ByU5wMmdwBGmXhuNwu+coPGITAHxCbKVQSruETf9ZMpW8ti0jZYX6Q9u4x7Ixcc7UR0Gnr0W7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiCfK8ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiCfK8ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC93C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759293593;
	bh=Q23pO+5ZcQthgE7+1S68PWeFWI+ixmb/H4MDfvUv9Tk=;
	h=To:Subject:From:Date:From;
	b=IiCfK8wsmW+1PUit+dU1ZjKJe9Rjnljvn3vTfU1HcDF0X3RMW58vWjphJ9npHu0wx
	 Ea2+wrD5522iCGJtgkjnmXpvfoUVsfeuLBp1KQOim71w127ezyfJ7hlWDMSvUGnLEd
	 cIi0nkpC3x/rZs+sNJR4BqcPIvCSzLDUNLbuxhwhcn8l9lRWY3ONnVD4V3x9mDsNDN
	 aBIAYgLm4zQHvT9vPZ+czeUGqxS+owZRmUv6/DORRN/jodp5qZ9kaIBQN2pHre73Ea
	 YvU5MQ3rFmQVOMdVPrAI+N0IEQR6oNHwWDB0YJpbQnEfoYdV+qFZ22fKAyjeZnY3p+
	 k2OZ4350HhQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F17CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929359360.30224.16456307547650427532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3fd541f138cf94cae99d2f8755fd8370665ae681b449a3b7d79157099035e4c
Date: Wed, 01 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759293593
