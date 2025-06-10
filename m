Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB33028FAA3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749557993; cv=none; b=DhzBtyGDIhY9mong+ZBzXqXGqX9zNHoqqcPpWFbprzmOyq18DN/FFBOkBOSHGBXfKmXj+Z2GulCE8JIWA50S20FvLMX0oeGbm5nlpV6SF7WsOkVUbGv+mI1ZLLY4SUzgnxei3eJM92EgdcLUYNPR6MPEEUnw+PIH+GxwDxC+Cbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749557993; c=relaxed/simple;
	bh=qGk6o+3ZqiLHbatIAm0VTxvEy4LqUlmnKFnUE0NMTQU=;
	h=To:Subject:From:Message-Id:Date; b=jFBgo5nzsqSMHYzRqZPIG2H9a61uYgrdaZ6ekdmEvlKS8GPiq7daPoUbF98a0H8yhsE+LLCBqTiyvWDOBbhLM/fiCNHlEhIDMcIC4ATPXDwxbFZxEXP2phzkQ95Hm2BLhze0Sz4M1XiyxMPktvqjyEGj7+2bpcyeCh8ltSOOZCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvMfdgP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvMfdgP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB05BC4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749557993;
	bh=qGk6o+3ZqiLHbatIAm0VTxvEy4LqUlmnKFnUE0NMTQU=;
	h=To:Subject:From:Date:From;
	b=WvMfdgP7kR0CB4m9OzVzpx0IfzmvswPv/WEYwMkKWEZcrfiEXRNsrhT38WE2wy+G3
	 qaKDWpy9BhgFxRqnxN5GXRwxdpMmCsznVX8F9yetB9M5NJBREtn1z6/9y+6UwahTmf
	 A2JufSeMrdZocjiZVM8fks2m2UeH+kkaUms2jvUOCykWJIrnAGK/PtZ07wz1FIMqBF
	 RFic7B8RBkRoY/9lNH8nfl9TkY5pEt8ZbJqFLF6RB7rEzpO0H5C7ROyYpbskfW/80x
	 eOQPLcZ1JNKtNST97W0enmsheJKN1/BtVw8yZrrYjCgBkx48Wf6ZqXtVYE3+uRgxgn
	 Wv1vGze2HMryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95642C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955799360.30456.546271530300063791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded3d9ba7d9e167cf97b07ed0136b7d7e4a4367f4545de607c13010f350b9638
Date: Tue, 10 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749557993
