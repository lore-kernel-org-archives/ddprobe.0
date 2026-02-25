Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0C4287507
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772052893; cv=none; b=NvrnqDyoWiisk0RVExIwifUsTMcKlGDVp7L3Of7vSg2kYQS3zoZUyYDYrC0RP2PiPzQamg8o/mKKzMkx9frewvpCRCzvthlRFo0xGCo32sLgDwW1MeBHVdNohH7T0WhFXstFMkztFJh7dQFSyiW4nDwovnVs57pE/+gACD+iGHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772052893; c=relaxed/simple;
	bh=tirHFe5ePVEVEac1kWXD6CjTV4tfMz4Cq/mKNA454UA=;
	h=To:Subject:From:Message-Id:Date; b=dTeYXjBZ9mRhs1y5zWn3sb9ThShciXuGfHQv+vcuKyKoAzLs8oIBuIB5SWFM7vdkXl1dZDpXKNAuEg9MxGuJe+00j24AiO40sFxdmbEkbY7I+z+Sqqf90gWpnqcuZWMmzybKNNBTNYtTfN4enHtGN/gooXwOHJyhTBKx2b5CJXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSPuNyd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSPuNyd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2F5C19422
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772052893;
	bh=tirHFe5ePVEVEac1kWXD6CjTV4tfMz4Cq/mKNA454UA=;
	h=To:Subject:From:Date:From;
	b=HSPuNyd6Dio2w4IXZIPbsdT0uIVOZL0qd85iZpWKsu9SxJG/foqn8+lkZJ4QNfjQ/
	 9Ag789t6CU+1qaMG3kVvOKLuxm5jgXFpyueM//GZ4szxZfPhKCXY5WK9yEO5qf0G7C
	 Xm5EYi2zZCMtwH8k5T0c864G7B9QEyHjsc3PW2/avNqmvrXfRjUqbhMv1gqw29yVFY
	 zImq9vLAPCj5tDHiLTq64oANo6mVkzLqrVJrkMjjCWW3R3c+4cPRM0nmQoKOPWEbaY
	 DwMB9/yH/H/7I5/orALe7/3F+dBr47Mn28zdmn4qWX4fNBhSCC9rP4woLA0VLdwO4Y
	 EsS6Xw2XLA4wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB7FD45F3
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205289360.5093.14931744109568499992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ed619eec2feaa679451bdd3554af9802c10f388187cc82a58bc2b57907b748
Date: Wed, 25 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772052893
