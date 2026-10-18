Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BF135966
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792289434; cv=none; b=rytFf1l7JIx9yBzePOXvEOHYAwMFtUp4E7Y3PfEoZPpMPbO+e8K5kLPFOLamLVuzKVCMvKn+R91zJU4YRim8KhEtxdbHp/bUQ5GddUm3BcRPeIIqrC0WySbIwyehA8LkgMOEyY4wImiohdFB16YiM2NujlwDG+kBJHL6o6aWs+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792289434; c=relaxed/simple;
	bh=S+JjywkRzBqTsDn98hHIPI4r9OqtgRipqXb4xw31UF0=;
	h=To:Subject:From:Message-Id:Date; b=jTvuYuUaD1sLM2KqWGf/Hx0BJZIxGR4WHJSxvL7kFFeKi9fhBUMm2sXstJ7hjzWvNVucyYbxJ8dz/TbxJ4iLXgFuJLQM8wFJaW6Fi1rcPmvi8kgSOA5Rn0oIJCCtc79a4WlNRAN6YUK4hmAmZvJjEFw+ALgn4xuw7WGxTBuevyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/xc9q+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/xc9q+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6564C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792289433;
	bh=S+JjywkRzBqTsDn98hHIPI4r9OqtgRipqXb4xw31UF0=;
	h=To:Subject:From:Date:From;
	b=f/xc9q+w7y9YxHR4GY7Qai9pVpq4CKc1Z6PW8p4YU04aJdyuB1H8pmQpUW5Xk2Qgw
	 fSovXHXaAVoB/rpETeSvO+tt+vmjpjFR9iKOEbk50GE3rmj+0opNJQiwZ8tqihNrhd
	 vQ1kK6OlMBoKWmlf4VfoXd66+6ZHOHAsZ7LxAur4qPqAd3ZFhVoiweE+SdbjMr9ero
	 pPhzmdXzelFP2EKHF0aAm/hYfnBbBBX9nc63BqFBbimCTAA3V/ozRVYCcvzjsKdDtO
	 AZQb4CnUxvBUqLWkcCdzOyA49pPT8It8oJH/Ze88EPnIKN5b5WQennVbBxfbR24R5N
	 PJRKEhJb6A+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD74CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228943369.938.12127631462101594568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9205f89cb1331755141bb0a09253648c0aba8ebad46e33b82b9462b196acacf9
Date: Sun, 18 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792289433
