Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60119F40A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737062154; cv=none; b=aaDsgwHiUPLTP30rV0jCjeOqSEl88h8cnFhmGPqzvsLVtTcSkHJy7tc8yZTlBmEStXrEuPVZzp6nnQenqrY7YSgvBXFdWxtHLyaiAhHtg3cyKmxVUz+qzbYks/ven7Yepv4fHBu4PwW3OoP1+RFJtehTA+Q4HTa9PlUd9Ix1wgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737062154; c=relaxed/simple;
	bh=TV2+/AAQDT0NyWWxO103KKn8ZgbSiUoUN4t/edM2BSo=;
	h=To:Subject:From:Message-Id:Date; b=b8+aOTlcNTfg/BCqanznFmNSi/dJ9jjCeVTHxrJXdUqFakIiCmzWY7CE4ZD5ZewgcW3XI6cnWLUVKdsumEujCHvM4JkkBnnw2RE7Aj5Fss7eT93Yz37qw9gIvO1Tjbd+mNDNnLB7FU2crWWlUGYtRpAPVnTgMECV9GiM0P/mF68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktNQsyE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktNQsyE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29FAC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737062153;
	bh=TV2+/AAQDT0NyWWxO103KKn8ZgbSiUoUN4t/edM2BSo=;
	h=To:Subject:From:Date:From;
	b=ktNQsyE+/irwU9LuyUXNVP8nPvk1CPIZbE+/az/AC/AtrDsLssSwdSKTcLEzXHVa7
	 RrESIUaQGqZlWc5bGmhFFC3LvGNgsfXIoPqF3rqKUBahyqhpL5bFgOD5aDGkbFmKPi
	 DaMMQu1lLQHIpr8BSrDgJ7dxOmADLvliqWAz9wofyUXH+5ZvWz4Hrvxppu4Na9GEID
	 nRLdCG9D9DIDp9xN3Qe+kv0nXrpvagSzgTdTOVX0vqvsm6+81uKdpbAHe3teNlPKHU
	 djWaz+HKPIImriXBV+Sbz51LNTcSv30CXOusJ3UvWjdVMAdVWeS85pqRSUDtP+lEzS
	 Fyc+jIFT4bL/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6E1C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706215362.12183.7543987291559819288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41ad50dcf7340b208e5b78e2bb696b99685dc020341cee17fec64189418ad83
Date: Thu, 16 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737062153
