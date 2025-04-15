Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DAD1F2C3B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744692594; cv=none; b=r+pY8lYIuUOQ6SuSCGDyeddWvwmpumLun0+pET6uY2uKklk90VVRk/ARtmtj6/PWVc/T8GLPLGfykMQEMxYmhZXa8UmimGDTSNhzitcEDo6tbJlCjcvfEqqhuhfvCAnzbTqhUcILPtC/kSjz8VbPmoNDs4/XbcK5glxsgaMHmHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744692594; c=relaxed/simple;
	bh=rzDEdBQpnztDj8DH9sMP5eHxF6sgSEGnodRT4ljVXbY=;
	h=To:Subject:From:Message-Id:Date; b=OQsqOUtARq4jtDmfUgVCiAw8ci+ddTfct+TQlMwNrf814wuq6DllT3Wun9HEJAEcR+v+A3B6PwrE/+wUNqhZ6CeW1O5lJerlbDzOP0M09qYtpPPdtFsx3yjxGMxUWRtRmHBy4Q5KlheY5CPLmBIkZSUJopHtTJa/6UdoYJ6+0Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Au403wKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au403wKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC600C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744692593;
	bh=rzDEdBQpnztDj8DH9sMP5eHxF6sgSEGnodRT4ljVXbY=;
	h=To:Subject:From:Date:From;
	b=Au403wKKqPY6mGzNSYjT23wrvj4vlG0UzCv91PcQRyIVsZgdyWid9Ae1I16Ujb+Z8
	 gK02lMvOeE+7vgHTSJEg+ryyvzApya1d6+C5Fl2gxrWLX82H35vBwiabGEyfucq4z7
	 vIW/FwnxkNdw6vucx4teaTPGz6NSBM3R/m/v7l34MHpLFA1e1xh+p/Pa9f04KnQMAw
	 NyzlX2oAlvlgph/OIIXFhoHdywKVeOzCN9ngVoLDDTfNnMj/1sGMV/zkSRS5DfPnZ8
	 g7nz4LQy9ZGwuu9siKUoe7bXEA1R0QlzMcOXzJZVeLX7PhoG0pGwIoJdH/We8t1bkn
	 U7qx2aQvUvHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8BC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469259361.10572.4054356145694346973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d567d76b46a4f082972b65e54403d4432799041ed72e75e0313abbf3a1e9d9f9
Date: Tue, 15 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744692593
