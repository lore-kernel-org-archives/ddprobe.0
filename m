Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62141328DB
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713934823; cv=none; b=ps8XSaqg4IF6qm9sMKLBQoF2+1PzBD20i0nfo/0VdBXnEgjHj8XJ5A4GVNDx/2TgPoe4syTVZN5smW2jEgCf7xFP/IXNXuQ7bsb9KMWWbazjljMoJodItzuvQyNbSSsEa0OL3N8c16qrxnlsBPA/XPWWSlQoZPe3mm3Vmk+go9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713934823; c=relaxed/simple;
	bh=sdSlOQB2vEFFyRKrE4jO6+SlnrEuB3qwxryxYLd7T+w=;
	h=To:Subject:From:Message-Id:Date; b=LbpHZ+wB2E8aSOnyspWgd3NirPsy7n28BLLqCmfbQpFSV7NPEcvMjPRSz8VPUXd0wN4hGzSSUh8KPzwUv4DqZCJB+oIfkFrKo9muiGndXbr2ioc0FQPwLpHEsgYdZq0QTPcbSZlIIxb3sRR+QuhKtjRL9fDbEariyR7KJghZiTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWZqdxfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWZqdxfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CB3C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713934822;
	bh=sdSlOQB2vEFFyRKrE4jO6+SlnrEuB3qwxryxYLd7T+w=;
	h=To:Subject:From:Date:From;
	b=SWZqdxfmn6aQJyBScwFVsUyj7pTEDLroe6F15Nwtg9uJwhwZvihYaRy0ZponUmMAm
	 JwQV3z15XaC5C7rUYBgtfm9rJHf4YC9UhsVo+zEdib42RRooqf9x2ka3/F1Bvl/0mg
	 e+OLhCTHD5Q4Z25Qpp7i4NQ4ZLEJNPMY1IDfliW7xWPyF2v5sgoLLwO50UuQR0eGnn
	 Ky64fFLeyZnNLSRLoX9gssyTF/2UYF8FC91o3U/6SvhzVXE5UoQs16UNuY6UOIBVVs
	 WBnQ9HuKhUD8NHCUnIgK8M0kZ2UvR8UJ/Lz3rMi+hJWXGMePcl92wShFTDHIysZhH9
	 Br5S989RflKrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFC8C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393482280.10276.4705278336660626655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da92471b1dd1de32826e23fc4c3df9931b05c187dc661faf5967b8270a0465af
Date: Wed, 24 Apr 2024 05:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713934822
