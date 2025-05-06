Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB574B1E60
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746569394; cv=none; b=sTtkvxJWd4g0Yt4lqOnX/9HqkHFw3QpXARDjBHdOYGziRiBjpmmIJ8d8J9kHFN7vRO2MrMg9tIBqZeZwkmrxz4mWvCSjvNnfccdovPduWjzOk6Q8vniwYvQB5/55yidOFBoqTuqnIQaR/sxEkcYsCWdXz+oPRdXCekh4RcksXjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746569394; c=relaxed/simple;
	bh=PVigHW0sHnOWuXz+5SAa+h1xc03JLyDxTHjROwCVbgM=;
	h=To:Subject:From:Message-Id:Date; b=OJuk/3rFfEA1ychjoTXi/tZ6jVdSJn1K01lJqrv0MMaIe6Fd0q5VpIMWduscg5co8LuIlncHJme1J22ab5p5WbWOTfEvFOuT1Iz4npcQpn/7zuXnZrVdvVFsaaAGXBC3FsWGLyjacG2F0cndDTCHGXb2C7G7G7XrzmZL3Bkhv5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abMEKPsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abMEKPsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A798FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746569393;
	bh=PVigHW0sHnOWuXz+5SAa+h1xc03JLyDxTHjROwCVbgM=;
	h=To:Subject:From:Date:From;
	b=abMEKPsbkhKwuDtprNOpNoDVnfJFL7n7O0O3C3xYITqiyhodSzqmQQqQHc5salFIx
	 N4jMXMJhrFqf+UPcB10+YljVSuqx41t5QW1uH2W+jRFod+w+LEh3xnaNw45CHtvZUm
	 /x7WqhzunZ8yQ1/rw3vUclVa/ufwhbP6goOzB99p19rOodKGEYJR5hKeyZ7fGcDCvU
	 3mV+oqXE6Cw6p1uTH/GJB2+omJ3tAgvbzZARze0vntS7ZkaS3W2Z9l5omz45JoEcUZ
	 5S2FOzZKr2lc4xAVBmfRW2R5LRYJ2lt6j2my4RzWnGWYesmoh+VFVnDZhaef3V/TYf
	 fhVJ67SiWpGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91489C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656939357.29353.1020781957330032092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8e935882e16ba6cf6bb0dfa89798cd4905433de9459dc54e49fcd14914c8c2
Date: Tue, 06 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746569393
