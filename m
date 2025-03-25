Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496681EA7F7
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742896794; cv=none; b=a4yO0APrj62ijQNlcRSTsqdaLFGzu6ehlNRVWPtZ52xOD6fAWsCOmo20aJOH9Dlm6QBhnKeYnMT5+jFS3B7dzjb5pUayDWy0ieWFNiv4KtAaydGjF1otBCpsTeQp+jwt8nsq2Er1IbrOGcVwWCSl4GiQOJU3AIOgvh8fABhCIuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742896794; c=relaxed/simple;
	bh=6YcAIOQy4DgJTdAVzxS9fhrEFGh9BG5gzBf9cMQq5S0=;
	h=To:Subject:From:Message-Id:Date; b=Fjl6dSeY5l2OMHPCtv/YhNONmOmuKKGPuFOK0kJkPZGj0DaY3QKJe1SLiVRKsawccqtayIyoDWcroBuZB4ooS7o+LXsOORKmlsRI9Fplha7UxtjMoUBqQtlpauqMIyZbGKqrQ8Z0DoKrHo1PauLw/8pwqEKmWH4GL3iILJGbTek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8H/pCXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8H/pCXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB6EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742896793;
	bh=6YcAIOQy4DgJTdAVzxS9fhrEFGh9BG5gzBf9cMQq5S0=;
	h=To:Subject:From:Date:From;
	b=Z8H/pCXvnQHKNsRrfX34fZeoDz0iP9gfgah0wnK2lkKPAB1kDatOiowMojAVqmc2a
	 9AisNhybo2NtX3OyLSur3/USBOzUleFREhZgwYCFNey3hKP04s5BQawlz6C9El58Il
	 /EJP3g3ueTQWIUyZEtc8cDft8k++jcqbBftCng90O/t2CXTlPi+SfeuNg/Oeo/ybGC
	 vvGPK8srp1FTjimtGSNw5s4nCnpCbNiXS6qs5TZPLvkI8plaA498u0Q3BwTuleb11O
	 JjYmWwnoQv+XZX0YvaeCzFxZpRwtOPmkQYgzFR0HbFPJRk6v7fDxZt6IhHGnJ/qS9O
	 xJLhcavM6V5JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A719C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289679362.22068.4947500214947366065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7c668c3a80cec2c9b0ec26b7608db96edbfb394b1b69bbec6d292ad5b08921
Date: Tue, 25 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742896793
