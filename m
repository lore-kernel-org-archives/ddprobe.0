Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361241C6FF5
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749099594; cv=none; b=NzyIcXalQg+v+/ML2CLHQh/i2n94Tn/dXxnEY9I/OzpFsJEy9svb+LhNv2OxcCtN6KcJGvUzagIohC9C99iT2YOMVz0om9sdEYWFv+jQUBkSympCH+8qeVUzS5LH5+bR6X4OXduZbtarjHJINQqjjq71GIsNr/0MaaGySJnKcD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749099594; c=relaxed/simple;
	bh=XhFWBs+O9RCtCXxcDMSYdnTbHS1gW6RU0VouKztoJ+A=;
	h=To:Subject:From:Message-Id:Date; b=SxK9DA+30ZFbqvqzVfIUSBnP3/6cYuNp0d9pjtvZ5yec+vsqT1hK/tsQ0dUaXtEmXMcfh+Dfmivuip/3y2byTB7po5eaHX3G54PUImiTlgIGZVtFzk163Qa+6ld0V7dvpEWOTGIjsm08Z5jAXYYK1sCw6CO0RQazzyXrGPIyhFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFgqYcLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFgqYcLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC6C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749099593;
	bh=XhFWBs+O9RCtCXxcDMSYdnTbHS1gW6RU0VouKztoJ+A=;
	h=To:Subject:From:Date:From;
	b=mFgqYcLokasLnaWMbG5pzMyFToRql+l6ws04CuLP2z44/5vKj3yZa8sUPFSOqEwkp
	 MxLJLHPU2Udq8W8DqYJfhTk0t5zCigP1ECvQMJFrTa6/vS1qLcxj0xuV15TPRApe3J
	 r0J0WwjfD3lr4645rEtSHr4dYih2iOw4iFD9fFgVo06S72vJkvfiZWpMzXndjCcBg/
	 qd7+cD6u7F3D8m3yzIA8aRBzyyASILyy6Zdx+6BCmYlocwpSzY+meJOiPiBmxFlWMz
	 veYOewbJlRA1tTCZs6CKzxhrCAJfAo/aXpl4l5GJnLNT3u2CIOxYkSXUAMOUe2gPtr
	 FEoqJ0NMf7NJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014DC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909959358.18134.1495447868282946710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6797bb345d37a7dabac577c53495854a525f791975c24531fc956b68dc2cd9f8
Date: Thu, 05 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749099593
