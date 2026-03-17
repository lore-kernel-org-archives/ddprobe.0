Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EF73CB2C3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773753894; cv=none; b=Pm/IdfMcXV4Gu/1c6SV2ne4A6gRK4ldidtpG17UoBtGSDkEX3HqbvfT276MUDtWJ00m9RY1/+NgtuVWkaM97nf6kslFBTuUj6MsKH6eF/zIrKd4RNtbAgNCEWI4N3/ihvA9sy7B+pebkQ+4WURPEHs9VAJbhLrqsHxFR1GiaLrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773753894; c=relaxed/simple;
	bh=Asfq7R7jNa0iSaoDO5Z7TfzDvHlVmMPRVL9rMlb7LAk=;
	h=To:Subject:From:Message-Id:Date; b=CFs7q1Rx/imVn0oFc4LGijfOY9QM0EC/MlS7ELJxw1ifR401jgCDuPsuWRdXjzsypOc5OGVswmwwAWjvqI5A5okc0F8xcZugX1OT+9Sv4auUBBv6CTRWYePKxq5G94mq1bMFqthBdIQxTP8JeygV8/Gfx38f0c9S1luiUf8u6kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRFZLpF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRFZLpF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE75C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773753893;
	bh=Asfq7R7jNa0iSaoDO5Z7TfzDvHlVmMPRVL9rMlb7LAk=;
	h=To:Subject:From:Date:From;
	b=SRFZLpF+6rrr5aKF7f4BVfkbj16iGcpry7jKZkeTbtezGobIf48gn1c/Sz4JaBtBw
	 9StCg0ij8bVxTUrRtk2/lngcO5cEmRECFQ3VnnK40EXy3U3waDiTvx61rCazPYa4oR
	 /lQIjlv3GS7TifoH4w9w96EMfde5qWu/elqX6yYMQ01Bl7Wc+z9UZkNVm9175Rg+VM
	 ox/h6nNic1gDD8xjFyw2Wnw1rNc+GHlKwqbODH/BwcqAfT/tn69Rd6Te10jeJbS4XV
	 0QRoPaxgxcz+54IiIf/tGT4ruxCJeLVhEwajoXG865HkvK5Fcuq8Slo50Rl6/vuDVU
	 aPUFeksGSFDGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE0BFD876A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375389357.4663.14524127763013611131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80cd8e1eb1b66009013993e188d1159b03210929a4456ac46227e3daec543f4c
Date: Tue, 17 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773753893
