Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501D1C3BE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736842554; cv=none; b=g3L9YSW+nbZ5+B4A33PH9iu/k0fIy6wYEymoVlwxaB4xx3hpHdEEHQfGOk3SvWl+21FYffJoaNWBUOSW9c3n97cm/piyFM7DDUarZfkglR6GDcp2NcKNzYGWcyu230gxuNcUQww1SNWcptE1AbFtEF0uSupOqr7LHnLoevcxzsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736842554; c=relaxed/simple;
	bh=fL4A1WTOG+9MMmtv5zjOI9QwJxbgKafnsqBRFFWQSLw=;
	h=To:Subject:From:Message-Id:Date; b=Oedweo2KDkrTkxHLG1ofcNrYrgx9JpLpFnokgJ3QokRMSrtWLbOynpIL2l8vprk27UUSy3bDtbeTx65GZNJitnBSSnkFH7xq4RK6AOhylZKWZhwjN22ghWYxm1TwUIzm+XmiDWpGNP6Nu+pg1TGd00JTfj8zMOLbAiasRP5ZPbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofhcO/Rh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofhcO/Rh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B26C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736842553;
	bh=fL4A1WTOG+9MMmtv5zjOI9QwJxbgKafnsqBRFFWQSLw=;
	h=To:Subject:From:Date:From;
	b=ofhcO/RhOxQpXfucm0y4VL7FK9t7yAPH2kSBLEb3tpy4oDLPgaz1S5Fa7+2l7VjUz
	 uE0FttzdlzJ15JDtu8KpIA6sd14Sp7+i5M0b8+11Z4wKYdUrDvphg3tNCVatpGCTr8
	 1EiAsVC8m/11X+5Hm8mTuUf08Apm46yeG0RfFAa8AJ2K0YtdUqw5t3DXOWjjh65J1l
	 XkT6LUYcUGSXeTBPMDwk4GVNL8sGIod1y7EhBgfmn8qFuhKXzLaYpJpPAR2S2K0Q0R
	 VQP6TZZ/vU6ovKnMLuVGKgG57hYXJqfarJ+8qH1ZptOsgdwIiNNOebStzpKtIq+wV6
	 5yXkAGjZeXrng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93237E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684255359.24491.4677920195543364246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8cb1db419b9ad0e63215135ed668054538b24b1622046772c021c94c65c922
Date: Tue, 14 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736842553
