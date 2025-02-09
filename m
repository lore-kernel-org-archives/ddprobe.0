Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2273FD4
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739092554; cv=none; b=jgC4rpYE/NYAGRba3zIMr3frEYimVcge9ftjm630d1jDicgZ+xgk3Stk/fjKbxTmSTPQcrHAI0xenhT85YWQxb5QR/+5G+jmfSR4qfCxA51f2hMXW4baR3QdeZGz/pWb2bfJO0V/iR4eqMHbBgVjW0mNKutTvOguJ47l2YVLQyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739092554; c=relaxed/simple;
	bh=m4MKt3CcR4jxzUWNrq+7Ry7wy86H65I/RLL/pQX9DZY=;
	h=To:Subject:From:Message-Id:Date; b=s4jx0JHpznNPjvUF0sRhfUNTnYGEQ1IDvY+Jcbw1S7jSdCL+ZDOsluxMmsj39nFenVGzG9S3ia5OCTN++E0miqx8KGLAZGEPgVrYFas962Q6hsK/TgNuVX4YO/Ff5HFqujKDWvJp0H0gqZfoB2aAvy7RqzKNr89+v9ikwNWgORc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmEqrQtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmEqrQtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B91C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739092553;
	bh=m4MKt3CcR4jxzUWNrq+7Ry7wy86H65I/RLL/pQX9DZY=;
	h=To:Subject:From:Date:From;
	b=OmEqrQtNB4p4LZWH8YCV1lUzbB5QmpvZ6PYaap7Bv6ZMmv2VDu4a998q+tlx4ecIP
	 5U6zAr3qJCTg5E8fhjsSXruT87D6Tnf6tEgl5Tm5FYPGmKvrB/HUUqfNgnLEvU/jXv
	 T366AN1eliP15a3LlEQs9zHStEwzS1LZ0kqT3ImVr/4zlu8f+FRj/iNyyturLegM44
	 BO1uGhJ7jvok1z+nZ+FIKZw5LO9YBhxY8htkpZoxzsInO4RHAxjy0BdHi5CXt/paxl
	 A2jf593HIJmSe/b6YJbTawS3ALoMHH6faXr/pkQqx5rBVRiTMMhESPtbtNkL1xQAzi
	 mdgt47ubmJ9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A37C0219E
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909255364.12235.16829580008495299966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d7b721e0b3efa41e715425f599fa62215540f861c3174431ab60e65b59c21c
Date: Sun, 09 Feb 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739092553
