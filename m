Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1976623353B
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736835954; cv=none; b=qHQowUNQz1uPIfM9N0poEKKrbTWbz1pghFcASQGQVaZUv1xeTx2wuXgR9/hYn//GQJmyFYC49/eEJGw9prEx8MiJ8m/m1abRZyPesJc4EuzeHoiYuCra7xzqsU35iZN46ykgSflFugilNtVP6DdFInAqx5SwAz1hIoKaByjs0tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736835954; c=relaxed/simple;
	bh=/5Rtq6kgfhhGVWdHJheQ9S5OdHQmM0j9c/l6qc0aXKc=;
	h=To:Subject:From:Message-Id:Date; b=ACJlU7D7IKo3PKRl2mBFx9i4fwtf+GucFM5txaBMXrcaAFYuKrTUTlOzp/wvCztnvptx+jvBQ3vYnhOF8wp14PUAMR6KRdsPuFzDiWnGYjSxgBh1u/YjhJkVbcseyMhFIMUDPT+NEdeovFjWMAm8OSHQny3vd9xKyY5Q6RBel4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJbGAtQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJbGAtQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A324BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736835953;
	bh=/5Rtq6kgfhhGVWdHJheQ9S5OdHQmM0j9c/l6qc0aXKc=;
	h=To:Subject:From:Date:From;
	b=qJbGAtQXZNBz6pl6NEgMyN+GdhCZRcP0eM+C4sKvTkpNUVPKkVAq0MWi/Uka2Y42/
	 JW+k9l24xhL1TJD3XYZSpfRRl350Tna8xBY3mPhRQBdHVW0rq1o+/r2mWIx6OgRcdj
	 /xRrTXMoULOBk0khVBWoYo+urTI3fM1fxV77JOnejof2Nqhrzja267RqSWk6wHLIr/
	 /osAS4sh9HkZxH+qt2j/4b7Yzu3TuWU4qGy+ExSEa0hfyssngIGeDI8Qn3M44ZKAcr
	 b+dgrKGciQdkwb5/QwH11YD/cH6v6VNIZyzlfVdiDAvQ/4BwIehDHEa8rW/IFhOdoR
	 UrmY3nLwQ4ljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92155E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173683595358.2131.15157278741341751832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc4acc60ac13afe3f45213dc0bafb569294bf7dceb3b7d7e19d9d6b9bed937a
Date: Tue, 14 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736835953
