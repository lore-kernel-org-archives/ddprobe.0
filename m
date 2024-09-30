Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADDA170A22
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727733954; cv=none; b=na19EoQR3eAOLVtaaApnx+Wx0B3sFqDSHnQbLfXTQwsZ5l0/14wSpaLWhNxy9SPsnXEHs3V6HCPnhSbAUyGlgfLgAncuY5uqxvmKAazLaVvXrkQVJigoDT0Wy/nF1rkpZnn76rJ2GBHHBRP29+GUhFbBnexk9F9aDhsOO9cK9uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727733954; c=relaxed/simple;
	bh=baFhpQwLnZVWH/WJ1FcsPSZ+7C3xTcipxsnZqbm6tk0=;
	h=To:Subject:From:Message-Id:Date; b=UhkRj4AoL+1xkrCF9WQyHtAD3foxAUBfXTuqB4RxxlkewfuiAqFNySwYaPLc07XkLxvEuS+0/rxUWSPI1JYDRPC6hg7vDZq95u4OYVHFUkUTXVq0aEvsCe6ehjlsEjKlk/Ak/IFDt5qDmrix6r3irhWkUHLgM22ahXdh5x80OOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX+IiXDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX+IiXDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3FDC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727733953;
	bh=baFhpQwLnZVWH/WJ1FcsPSZ+7C3xTcipxsnZqbm6tk0=;
	h=To:Subject:From:Date:From;
	b=dX+IiXDjTEEskh06ejVRv5pXf04XEYn4GyjnpJ9iUfUMSzMIuiS37eUusEPcNszEW
	 8XI04IJ6h7Udw4TtGR1B3Bz0VH08ytmaTgbZKV17O5t6lue2XwMX+f+uA4OgRTrI6H
	 5+UvPFhOJ8v1Ga7zPljDaYO50QM/LkTd7vnYdoVwEg1pThMUhdtdRvfN2L4dNMP5ia
	 yt1H3zSK43B6gruq7+z/yZyLXD4MKnCiWi3ijdUggTtji1n8tAanR02HLTMmrfiS5s
	 /vXDi+igReZg7x5ibBq9kbBqjjU2YbLWdPOw2VvptEyh/ugJDjQLb1WRmEKN6GegqU
	 ki0Ph+dkRpsDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9834FCEB2C2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773395360.3972.18086679154479382812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8775cc8224afab59e661909e10df1815b51593377f129f4c51148e61e6301bf8
Date: Mon, 30 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727733953
