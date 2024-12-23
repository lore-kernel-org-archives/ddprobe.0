Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BADF38F82
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734978354; cv=none; b=FT/eVQpzIEdTDk8S06JTR0glGnaK4KZOA47fzBjwx/PqEF5DRscRX7Oyk8JfAisT1A+8Mb51w7xDqCo9TTAG2H8PDdePwYTNERsqetaqiHxFH2aSJY09PXeNzlVWDPkO9tCoNYL1UF2yaKAXP9m/MKj7Da6lPNczDRUxLUGRGTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734978354; c=relaxed/simple;
	bh=Z3Znf4uRuVPTdN5ud3PFtWb+qhyIwCGTJvwT4jvnm+s=;
	h=To:Subject:From:Message-Id:Date; b=J6ojyrrDcTU5N/HwtceU3dPgVuhDnxxvRZpBSqF4jXWjOuZWeMF/T7cwFaFIzY+F2gI+UNUM0kcq7gkEnxMgulnW4qXm+0C3EhTC6pKzgt4MiSqgwmvIWBeZy0JLVPbiUfkg9IardJRkEzz+JUrSafPkUHc/vwEmXUU3+RErexA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R//uixj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R//uixj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B138FC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734978353;
	bh=Z3Znf4uRuVPTdN5ud3PFtWb+qhyIwCGTJvwT4jvnm+s=;
	h=To:Subject:From:Date:From;
	b=R//uixj1cPbS1g+9WKYpkSSUY6fGigPK5xNVddsHguBSmzJJPmDX5IleQIii+78To
	 trri5M5H8zyLV9VWnBafEw1e7wfFKPkTssDOHZWYBlLfnUXxCsJuiszS4jmeYz9pX3
	 5Z2AvNEj37J+gpnBb5oX7aQSrP4z/5cFlfncXyek6/BYP5qErDzmKDBhfoSffwFEPL
	 xDoqqVIHwYcbxDqJ0HVrdHZjDtVI0GXW5Iz3QSGJu8qVFVUqC6rMNSn+xi37j5RUTu
	 oOK1VUYe4cVseC2zJTe7uyJl+TSmSVLNOJN2prJ6sl97bPEwYGq1Gevsm2t3oPDVfl
	 6dpqcIS5Bk28Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D0FE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173497835360.24784.4468396592511531519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0ad26e734e1afb3677d62c07e077fe2b1b842caef2e81f11396e95ea1f5bfa1
Date: Mon, 23 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734978353
