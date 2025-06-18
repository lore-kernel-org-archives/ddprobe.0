Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F41919DF7A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750275594; cv=none; b=Kamylsr4MMEtpcF8VPtnlOIY7saQpcrDaACHGsQQvVZqN7rCdPJ7fBVhPbhA57Wlzni6jNUOW3BaeHDFbe4Z4/04+elFMcvZOVUpuyWNf9UwaGdx+C7bXbqrSdWAkCutp9idMK6bwi3YBJNsNMNCbdiTs9sHG/3wLj5mYzG+WBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750275594; c=relaxed/simple;
	bh=rJNSXFn9x0uNLEp/g+agwu8lJ8d6IHacWxtjuO4MqzE=;
	h=To:Subject:From:Message-Id:Date; b=RmE7CgImOwHpF+L5cQSJXPBKZBIdf75o7oz8Lui9H5Aqs/JiQsHuG2LywGXbmsDA8jDZEGbnvfzG/6MCk2XOcaXCNK/Jb9ZPcJ5H7ZTS4bD5WAeKpoWUnZtXoDwOohZqUnbpqu4/m6RypnZUfbb3QRsAPKgVVZaT35A0V2O8dZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3qfTjlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3qfTjlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6115C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750275593;
	bh=rJNSXFn9x0uNLEp/g+agwu8lJ8d6IHacWxtjuO4MqzE=;
	h=To:Subject:From:Date:From;
	b=m3qfTjlLnmJEVdfK68YT1cevuI/CWX+xxxrAq9JF/kcZZt+jSha4+LZJy2JnqZmgH
	 UksRUV31a9QsIVEkSrd1EQDiBd4+0NEShlu9a3Mue8x5Y0lsYMMQBuhmnGIA1xH8kc
	 G6fUH1YZ5lFhX1218ZtcJaa3vxO+m3CGv+ThVIQfcAk7ZJS5wQ74lehMCKP3GvbRnM
	 FAoqOG8v1JpUyg9jVgXiFb0ymdwqDy6pqxjYFigSDQc0y0RO3YNqcCMY6fMOg6i39x
	 EW511zfZbMpA2TsT3eZPqRPC6BNJexeA9UkA96+29S0iSLBLeEJXBW+Zq6difny2Qr
	 fXSwC6Gpw9/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91562C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027559358.19476.3486053594170868490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c683572bc2e90578be0e21c9372fff1b34f3129fc154e6f147222ef051f187bb
Date: Wed, 18 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750275593
