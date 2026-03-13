Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312E839FCD6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411894; cv=none; b=twkGR8W2cCmRUl6mhavs1aG+5jSE12OMD77ALovv3o/PJDKKpn5IFsnajDES3f+E4ZL/ym5zat3KNvczSrrNcs5RR3XOetWx5hD3NbvQNtIlxisUi3zoel5zfTdda/U2hUIxX1HAgyCqoSgmOeZeK+MiWM9HLbe8UYGxwigY2EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411894; c=relaxed/simple;
	bh=3bfbfYoDGqWhXuDQxTJT6kFNCA4KKHzTvJvM6IV4wwg=;
	h=To:Subject:From:Message-Id:Date; b=WY4liAEsXQ5VMCzgQi7wI5VrOlf7bNJC8/OJYmuWL4TxtoO22dzsS0b70ZKN66UNncYxFZbPAaE4IA0LilIaWKINFVrIPiBTaFYDOyNveg3DF7ZdjbE6wvOngEt0Wub4011hxLLsgVck5UavRJYaPqSj1Vg4uIU460oOZi5Dzuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJNQOcqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJNQOcqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC2C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773411893;
	bh=3bfbfYoDGqWhXuDQxTJT6kFNCA4KKHzTvJvM6IV4wwg=;
	h=To:Subject:From:Date:From;
	b=QJNQOcqmPxmuDVhQghVwJVSsQWpqOYNg0+fD5yNPSBmFGB9Y6bKO7GNAL+t2vecvJ
	 0FLwjLEmoZAhGw40BabcuIBhA6kOC/ENsyQD+S6AQY7NSZIoW+KZxXaTLHnCWGMWf4
	 1F2YrEAxKa2WeerJJ9BcAyexGYUdPTRgu/k74edllCp5TAN6Ekq+VtRt6iiCI7UgLn
	 cjm9AObJw4EXtwfNF25K3/ANHtwBTxzmFGUZJuo3g3eZRAY0WhCj+8QOoFCzk8bfl+
	 JqUpPfdlFnD8+JjHd0C5DVVwDSA9LkZ11G2kntGgdSBXZTxMT6ASrekO4ozdpoVXEd
	 NOf3UelzEQY3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BD105F7A6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341189358.10176.5132270534268922923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1032cbf1fb475c0f3e255c7390f84a9c8da76ddf0c4e7f5a3963885d6f7e460
Date: Fri, 13 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773411893
