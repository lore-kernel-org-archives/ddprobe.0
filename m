Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B64225A38
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772701494; cv=none; b=RmcL5KQ/R9DsHHPu/RtpOA+3f4eA0N+tejzQpBWWUlbY2Fgw83vD6eTTuSmYXdni/0sv3bGNxnELyAZ0NhlG7yx+TpiScQElQCyVfZUaunpw1yz+Mi+W57X1Y5f8gR0oXaaXWLi/HDhaakROqee5x4v+EamHvjyMHau5SpIWeTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772701494; c=relaxed/simple;
	bh=AqaWyziG1gqmjLHsoc51La0PsP4Vi6TNtYQ3fx+KkSI=;
	h=To:Subject:From:Message-Id:Date; b=nPU0gxHWJEVKU+kgMUD9IwdNvRpZnmX7wE9QDj1hdmvEjVPx23cgZE6tNNMEt0hAvKgIePufDn2OBDxW9wisfZVX+9S5zKm3TZdJieGsg7BrCwpOyZgBE5vIpIzU3auqdOjUDsKuL+b9q4P0dsk8r+p3Dk880wxH8GAmpZMCnAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIj6M+y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIj6M+y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A025DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772701493;
	bh=AqaWyziG1gqmjLHsoc51La0PsP4Vi6TNtYQ3fx+KkSI=;
	h=To:Subject:From:Date:From;
	b=jIj6M+y+GjLlm8/sLqJCcYAojknNfhijIGc8zDWVJahxgxj9o73608GUJkG4ZJFEs
	 F4v4AoZNPZh/b0C5VnfPiI+wppC58kBRlgHilfS4V7+JfIK8bA1UtOJzbqxhEamqA/
	 uuLdAFegYmXUIWAqmte1VTNl2oTewpMflIf0VQlWVnCWi2P5JG2S7q9588EF1xYDEa
	 XBppUQDuhHBmPQWwEj+VHvmrsdWdiA5jQiy6Kabf5wAMVPBqXwIKkwhb2X6a63wfZ3
	 vtT9ZbxMb3OLYliGTZ7VgPrBWGQZGMp1HJdWNeff3RMF7BK8GTACB6F9ocaMXC7jYT
	 tZ5c+vvu3lvqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8FEEF338
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270149358.24362.828756574712843167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f93b8ba5f8c43b9ac3e58e7ba582cdb4582881f16e66f4fe32c818ccb4e8f3
Date: Thu, 05 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772701493
