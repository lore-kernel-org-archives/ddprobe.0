Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A484113C686
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711465696; cv=none; b=gFChIHIdpc4klgd7shbwzGRcf6VD0+E9J4LbGH7kH6LnmR1bvj2c+r5Hr7CZuozsnq3O2sMBRCo+pyE5kZI9jdpp5WGzuZBpuz/CrfAl531hbV5Q/RubBRVKZxdCI44Uqf2vVi6dXj0vTKDQ9TDen1tj3AmoHjcyjRp9RuRUZW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711465696; c=relaxed/simple;
	bh=b05fdZ/maovFTbChBZCz7oXsf7c8oaXRNorMmQyfFTo=;
	h=To:Subject:From:Message-Id:Date; b=uUnK4VDkddhe4zk4JFiLn2UGaP4v043ZlSuYZ89aW/9e8nSZ+Cml0YNm+JpsAGDUX6aB7yiWI1nLzn8crlnZzTBPSate1wXjFrPvF1voR3xBu98h2+xB72fDXJMi+bnattRFnZI+bnYpqPxojXsOrX5ETVE3CbGyKQi/wjryVVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSrfLl+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSrfLl+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82044C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711465696;
	bh=b05fdZ/maovFTbChBZCz7oXsf7c8oaXRNorMmQyfFTo=;
	h=To:Subject:From:Date:From;
	b=aSrfLl+X+2xGaGh/5jHeF2HbBg6PgPO1C+LfLa1q1p4HyvsuLyL/3BLfZcESEk7BN
	 D7wwnqbyVpUuji2E/iGMIusBYoXxJ+bgR/o4zMz22FLvS7gtBh3q/ANvRGheYxZpos
	 PHqP1JoJzxFo5NbcbvGz1w6V33qjODEy7TTEPVOaKsYM5aHiJSPDF2Dw7R60Ankzj4
	 fIsWyF4RJeoFItYWdHzzltsz14DjJmXTA+tGeUS4JrrDB3MJDLkL0GAeDUoi7IWqPZ
	 8/fMlACBif4inaQxRNgf1mFBKdanyqeHflPNZ9ti7c36/ADXT6nS+KjBmSFHoKNAOy
	 iQPHjqfYHi3eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED6BC54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171146569644.7353.2085426982866524499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54268c116d13398d4bd798a2b332860a39dc920df8f924d743337cc5082b4ab6
Date: Tue, 26 Mar 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711465696
