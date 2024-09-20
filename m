Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E7514F98
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726860954; cv=none; b=DV1rp7RI3KYfjMcWgGJFUuP9OcByNVkxLKlx6AuDyCM9+YMecOGJWLpM2YSkS3hEd5twmxYyCJw2NIVWh0HbWTYFiSZdXXTjTm/at8ZxyqgAANlHkLuief/xdJa2TL/6iRDMCUYhvFcyZhH0IKwz7zEufazdoF677t5MPhGB/r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726860954; c=relaxed/simple;
	bh=Gh7BnxUVb9qP6WFuJ9Z6J2VXponu2EDYoStGS01tYeI=;
	h=To:Subject:From:Message-Id:Date; b=o7xhNYpNVtfM5VBHUTw1DWT96ToLnTcbvNP830pwXWhnuE/9KRCjYsGNvDAREmP2h64FXW0CHdQknnieM2fW5rxb18m9u2fc7Klr2wb7NrqXlotn8IBR9IEEtozwFrwkI/Dv0P3K5L9R1U/OV6RB/N6RUv/Toko9/Y9Hzx5A+vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g09V9zgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g09V9zgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7FEC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726860953;
	bh=Gh7BnxUVb9qP6WFuJ9Z6J2VXponu2EDYoStGS01tYeI=;
	h=To:Subject:From:Date:From;
	b=g09V9zgUe7rANLhiunXvY/eAzNJKaGwU3e78VzcrrJc6nN2r7hvU6hCRNhF1vuhC4
	 VvS9CFge6rGH066M1I6TUxwh15oGlgJ8qzjsN7KC9a376qNehER0O3lmcdzRO42ZjL
	 EftYtI/qbE3VQb3ELZrkjczcPz3C0bcymORrqK7UW0eHry6xutt9EUfhTHcNeOSjZX
	 vGT59lniNoZcgIblsLAooZi69wbDujs8MrHD3dHQKKFeVoX22NtRBF3tQY7LFgNM3n
	 992v2W+Kz9vxE4aWAg5rbS2BQ6JfEF6g1vJmPTh5Tdb3dv8AjiaiUJhj1Gsbgsrg8X
	 IvX9tmyPHPJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531FCF9C5F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686095359.24995.2650588232125162287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ef862bf76931e4eae4b5cf102960c677b12913c363995fa0ac090daa35fdd8
Date: Fri, 20 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726860953
