Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588C0330B32
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787071834; cv=none; b=eeZm6k6xSzbI6hmcZVlPI/btTilxqBMtw+X90rkl9hUL+BwRVcbXvCMjJvaCCXeUaRO4IPvolGhKeuSLUF5cVW+6g3HEfeHvLZFA1DGyVfZJqEbqAD2XBHpGEIQ6VTntM1z2zNofR67cJ6T34W7CGV92THWFXr18NBJLkTSr+QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787071834; c=relaxed/simple;
	bh=Wt4USY3h3dIoSG0joN1jPO+PQPa0JYFlshB/H2U0T/M=;
	h=To:Subject:From:Message-Id:Date; b=dTDuTxQQ1tzg4S3nvsbAjBnuf8JXJXMex54vWlFgHIjDvc8RXwpfKInU6DxKQIrZUhAsFL3/yG2nydCgJ4ywG0UEC8/avrSwm6G1RgpHodn6v/mH00NAOSMYuhMLAoiSMdrjkGJ+pdusFndhMOaXsvINwJ2VYgrDWetFTfM8/PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lg3Cyt0N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg3Cyt0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE18CC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787071833;
	bh=Wt4USY3h3dIoSG0joN1jPO+PQPa0JYFlshB/H2U0T/M=;
	h=To:Subject:From:Date:From;
	b=Lg3Cyt0Nk8GSr2H9ptF5Necd2aIQrVgamQbYf/oRKSiwid7W9Dtut1uZFwi3bzqi4
	 C7osKKtc5IXuSbDc36Owi9eYw9uFw+RDrCcDtoPMA8k+tMHWbFkxgV9o9aY0769hSf
	 JMIgRriA6oyLgXNsvpchgSKwjXLpO6CHFfmmoitDZrSQlFv8KLmvRwpiM9gMvQWmTf
	 9ihTksgd7rY3rCB2bEChgRZPudiPDFn8/RXDuPnFW1eD6EPJxK9WtP8HAAQePuW5mv
	 V89JkmtKh3JjTu/zBCYD1XVyS121it6hEbKxLZKjf0I3A73BLZU0sYkILUQvfqm/jU
	 NGzNyFjwwzWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB017C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707183369.28712.15157487376764081306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b784693492919142d4e93977f0ab8a9a16ae01a52b43a3716a0cee68a67fbf
Date: Tue, 18 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787071833
