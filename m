Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D2118FC74
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737430554; cv=none; b=V24VHMImcIb/UXL/r7/SLN6zkMv6z0SWtjUzN8X217US+IDI8NY4OkbBHYPKUpO9TGXGHoxh+eGHM8oo8U6wf6C4Zzqs+fECpGEnLbc3lgTllELGnNQfd8ibE3wov7DyidjwRN0I/lwH+zT91nrh4DkPEWuk7X7mTphBah58e5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737430554; c=relaxed/simple;
	bh=dq159UiOVmjLtF1h7BXSqU3kyIOJyU8xThJ2JqX+cF0=;
	h=To:Subject:From:Message-Id:Date; b=N2KdfIHDkywkPfaSLG7aOsmBZhL0g2j1ds0F21dGb1NbyAEH5LgxGiY+oVGP0m1OzP/w74PAAT92mHekqi64Aw5ANpIRYSZJr2Kbe2oAelzgqXxkq/TtkVPhh5Q1WXbz4HJl0qF2QfCSnJ7nduknqwEZqyh7ZZcn33TzYEIhB6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5NMXCz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5NMXCz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC33C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737430553;
	bh=dq159UiOVmjLtF1h7BXSqU3kyIOJyU8xThJ2JqX+cF0=;
	h=To:Subject:From:Date:From;
	b=n5NMXCz7CodIttVUeUErpvSwdyEEKNUuQJafGjdI2DosfmAIuGGh4vLSu1q6jrLKv
	 9fixqBxKktmoMFtGr2Pt4/4frPJU4BhKRVMX0ZIAVtlEOTG60mXjmhuNBRoDFXFhPS
	 W57OFcngiN3+XBfLVqAXo1IrRq0/QJtvJytXQ7YCwSvGScO+ItQgD+kVJYbMJ3tYKG
	 cBaeIp+P0BDj5GObHmEvlCYE4XA+/F6omAoft2vlnnm3qPJKP0AP2L4qrQRQB5P7LA
	 t/HyFblcto9rKpiHGB0DxZvE/heGjd9o+haGmLTsNh+6CZu7Jaj7VsJJHqgyusRoe2
	 HOh9JbCNDvehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F709C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743055358.27665.8380013400659088739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1139c812d14a197a61787b419ce1bcd1ed27513c96330d25a1ddf739757ae732
Date: Tue, 21 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737430553
