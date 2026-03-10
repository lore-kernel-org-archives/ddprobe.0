Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E42A2E06ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773123894; cv=none; b=NURswZ8GHZoOxZTEj0DEknPnbBU2Ox8ipVoeLSXjwc4gWVz/R4+PnFWCmtmvCFuG3B6+WtjMtR/iRXxUfKyBbnGqQZSsPiCy0Pa2rbpmYQx4A14/Cfx2dqevDZy4YRNouFpzbDhiOak6DN7X7WIQjpbfl1HDzPjSRYcpj+7qALA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773123894; c=relaxed/simple;
	bh=rStsEeWL8SS9BWzP3VY7mn8iQxfer5vBPHknBJFk3H0=;
	h=To:Subject:From:Message-Id:Date; b=WYNIWxkHy82hK2ODQnHojaC+DtZt0fjqKbYruSl9HAjbmBd2hkcG0BxMy6fZ/430vF1a3qq7pJE7UjDXKyH1F3dvYCHHD89cV6hJYjN0Q336POAi4Q5yOkPbiRBRosTMaITKm2AMIJyO/g+bqK4itrTMFuNgPzdzmR/me55sUcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzLi+v3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzLi+v3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F21C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773123893;
	bh=rStsEeWL8SS9BWzP3VY7mn8iQxfer5vBPHknBJFk3H0=;
	h=To:Subject:From:Date:From;
	b=DzLi+v3kO8vY3jX/mTne5EB780I7MrCvNHbrE8XXAC2uQZhrCiGN3I8ZcTmt5XJKW
	 M2azPWqyBuE9MWBKzjCeLqaJ4+4CCkX9jBoyoz3tfKwg8ZfcDgZmZuBmraGVXPy3aW
	 kWvqr3/zn4TyQWK0CFmjXCj0oApmix11HKmX8LvrlgdLB8tftdBXA8JdND1ta3yJ5r
	 T8QX6/pL74FotIg05k0DH/5/WWe2FJmV44hfcPdON7uyk4mLnTa3ZLB4tdch/YPtxe
	 rHIvbCSvub5UJaybDNGnxusTb5O2GEvNEg3fvGqf84zbHU7LUj+OUbprwlTP6LQUHL
	 iqcFe1N5Tlkqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB5FCC9CC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312389358.20390.18132801734215940982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c1da10780e215258b8049475a0e6745603419cf97e05d24d500df12848cd3b
Date: Tue, 10 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773123893
