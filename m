Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45730A47
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744258794; cv=none; b=H0PGdb6BQ3Aa6mqIf1rchp9vEDcY1SxG0lnnLXBi7uKRfwqV/zPCJaKLX5hcWcj2KIxTFC+ZRxCH43/D/QZBjhPTFsXXMGKQ+WPWk3VpB4C0ddCwAQ2HMyWAZvJgWbePh7wTLTUzH3TzN4TvHa8XRErsCCEfm3N4cz7EEvE57CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744258794; c=relaxed/simple;
	bh=hiubIGYJXj7/D9bORLjsvUwnalMH6zpWvjUwHMrDQE0=;
	h=To:Subject:From:Message-Id:Date; b=QPMRHcog5PPwWvyoJGnj7vNpOy+wIrCHku+OtIOmEWiI+9xjFuUOe0ZF4Ap/+b4RcZbx0PJlvOk1KhSI937Kx4R30LZ8CG+tPbzrIVjcOuB3HxahH2qP8idvYA+MM9g5zYYlQ3Rwl0R4n7LqmMcCXzvhbLZD83jWHyzJzBynZ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U12TvBIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U12TvBIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B11C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744258793;
	bh=hiubIGYJXj7/D9bORLjsvUwnalMH6zpWvjUwHMrDQE0=;
	h=To:Subject:From:Date:From;
	b=U12TvBIKRprFM8KchCdGeI8sLF6WaWBXV0XDq9Cd9bJpwhU3MWNAI8IzMFmKEGBSP
	 VNvwYSCgJ1t2YhICgkcHRKTPwjq9f+IMboLuHUmqlJ8DjYNhG1lEowZtpbkx5WT09F
	 cZfwW8cEwIririKMRRoGLLe9FvUR7bB7wDSD1GZKFzh0ddR9RsuVos/2GB7H+vcIZ3
	 ffvue5yv/f64yMkuaAFgD9nT9Iv3fZkyP5/g5cam01w2jqxvDxT680WiZKK0LShFLo
	 kRzU0WjnZO2XR4qKbxt7Wff5DjGexk7X3nylzBqdKsbq1csaP+suApAQuOtF8kjIuF
	 NLJVYInRb2vAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAB1C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425879361.32377.16453458925764521037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75775c79cfaec5514f9030ad265115f310bfa19b4023988d34d754fa23be4fd7
Date: Thu, 10 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744258793
