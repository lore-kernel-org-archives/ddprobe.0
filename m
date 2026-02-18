Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0C83168F7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771446894; cv=none; b=Sd6BoL2o4/sJfH5httWAAkXkLjLVzBQMQ+UnvOTVsHvyxHWgfGRQnxxf4LAj8uPu7L4AagaG5m6r3ynAX+aBlJtid4nUytNmd69c13ERE08dg9vgY8N3/3B0rYbDHD+OhyZ9N6tNrLEI5VAPhUKL7Pg9FTYn1lKs+q3nbxeBe9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771446894; c=relaxed/simple;
	bh=oigQsqNafN80KWAesgVwbxFaxfOA2TCVwehG9fTjN9Y=;
	h=To:Subject:From:Message-Id:Date; b=V4y4MhB9YJ3+d0LX7a3GTXkOr8GnGrru6MJOEohsj2jpWIS9RK7bDNLV+n7xBntTd0rO/P7jQz1rQIytqfWSRWyPHcTzl2wwFs3QZerArpFxIRSmwe57VsKRTN37GnF3mj3Ng2B0xjzT/WBcsDOmbAL4jjAGFJX5112gYc3TvjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/eBuUiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/eBuUiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99D5C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771446893;
	bh=oigQsqNafN80KWAesgVwbxFaxfOA2TCVwehG9fTjN9Y=;
	h=To:Subject:From:Date:From;
	b=I/eBuUiMuxZbvSmdGdIVO3j0j6c/Z3g4WU/xXpWAmXD+PmU3QPR4293K5z5LHPE+x
	 8kw1tY/UmnZPFelUlRwGSzz9foB4B8tnmpDIOko0CWnVROe8UvpQinCtiXJBLodQIg
	 iC2UR3Fu/eOTkwBIuBTBUBKC/b1VGFWbTzPsqVIBf7T0+LgBTHe3/YuzGWUf5JE8ua
	 cFKjXqoLra52BLyLjqoYYaxOHNgjpMATYu+P5i0dwTEZZQRN+1wsoKrRgJAW8sLq4w
	 yl9h5UfU1Ys66g6xrcaVvwDPL60xUnOf14LAtonhRVaDGEkCt8xY6EIONLYnEaSGPL
	 8CtYsJSmJ28Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A48C4E9A04B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144689365.18576.16635784778288409408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15955761312af60a3fc3b46531a4954b259ab810b7ec5c29714a97888793ffde
Date: Wed, 18 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771446893
