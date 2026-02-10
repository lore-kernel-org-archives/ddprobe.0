Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC4C311587
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770721434; cv=none; b=sbYX8TU9orvu5lPn1OZoJAvhwW2tHk7jasY+qMiuPfj6ZHteIcnGNMXiKYKJq2Ut/MNO2wvZ1+URSq4+Y0hdpvdwbdZOWPEPb/x08QKp+KQNVg/VbWtFwyex94weNmGUmWfuAZ4NBqu8+L2Qyd9hSXShkCr67drSlayBOiWAF/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770721434; c=relaxed/simple;
	bh=yqBkzhKbxwunG4oW92yvX7XhMOl+hB+O5hMX2qpUbws=;
	h=To:Subject:From:Message-Id:Date; b=mH3RRA1JM8202CpOeVzLDWSwEZyk/RO4QDjOI3QAB7M06SvzrgekKRO2PsBc40Bsnz55npZObHiMvtt2HujetgvR+eED3VO4e7uSH+46g9hmMtOKwvDvnhwHVhDQHTCDbRZVW3UcKE/c7XUCOwsn1VKb8Ut3+jC8FwsXTmgafbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl9Rt6jO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl9Rt6jO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC805C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770721433;
	bh=yqBkzhKbxwunG4oW92yvX7XhMOl+hB+O5hMX2qpUbws=;
	h=To:Subject:From:Date:From;
	b=gl9Rt6jOVLSmzfT2B8OUzirh23i9EsWbioKFTfKctLSC+d2N82ORkhBnLPYkcmjo0
	 hN+6hvGCtFx5jVYO3RHwjJi9SYFwib7aW1dGAjp4pBDFEPu/7QkRyhsjIdmEBsBUUz
	 nDVYIg6yi+K6+A6Nf0J9Ps2m3HmqxQI7HXEvL1Z6AMJgAAsgjb3qsMa2QUQHFm2mQm
	 vBrQYm9wxLQsHkWeX30IajMhtOcYZinrIaSufSaUFg5y0oEsK39wGX9pwFg8HFTnO+
	 VoAjletRfwcBBSYGD/aK6SfkpjMaPcJeZoyYDmJ1DwRCmgl8u9/XUgbnBylvF/3mw4
	 QrZ3NgPQY5b+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB36EA3F3A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072143360.15098.16815424039223608111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1016f16efc8b6827506439a233a3381fca08a777f36980116ea259854ac33c48
Date: Tue, 10 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770721433
