Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAA92580E2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749797994; cv=none; b=Gbvdq2E5ZT2NmK9QCfwq22Fu9VX4p+4s3CdFGnTXvHPXvdcYPq4VZlMDHnlAI445ImoSe8sHgyO9HZSyEVfhNIbGgefAbRnT4mL766SHkKgdftgaLTXH7UQZQb1XerUW/YGwQB00/bnrH267u59fTV5ya8Ptz5Y4uiGq+ESRYlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749797994; c=relaxed/simple;
	bh=j6DzS/kFLJGfzKdrukwZCp8TMPPcnQJYDhZG/neshxY=;
	h=To:Subject:From:Message-Id:Date; b=LWz30v5g+q4Gr+GnZMn1n60VF1X5Zb9g9ACQP7SNd+19KZjJJS0McVrZD5CD9jT62q5GumXSXP/DItfYIGuLVJ+SzqdlPmilcbNbd4/k147a+6HGol5ndIosWPkyMhtEQ6cZHiuX9IArL+OU+joq6u4yg7AGG93er6pBcIZmiXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Twlk1UJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Twlk1UJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A407DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749797993;
	bh=j6DzS/kFLJGfzKdrukwZCp8TMPPcnQJYDhZG/neshxY=;
	h=To:Subject:From:Date:From;
	b=Twlk1UJOjOyxkhdBm6sSMS4hnFUrv5t0FTccV/ZDaw0Vj2zhLxSU0486n2owbWJ88
	 h5ZsET9S5GrX964OYZUzrEZLGbAyrtKskBz7AeF1FmF7QPd8s86Mopm9B4UeAcNBxX
	 ywJO0vSiBJxc0astppLkjP4aDF9dWdBZdixtNf5hXhQEYTcLtFvWvTDrzRQyiM64Nh
	 tOGokzrV+Mi1CLSu+hDSTATQIhFJsgoY7bGZl48hi7KB1uUoRFulW1EkuQ6GX0a6uK
	 LEXtKQs3d/uuxWKCkid+KI/8U4nRZje+SgFvvBwq7W3upxtc+S8Xf7aYNnKza1n+H+
	 WsLHcM7n1T77Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB51C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979799358.31764.13079100966040196107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b668c311d82be149860d34a8363a49d6a59a7a39ab4bb7f3cb07f9d4e956265
Date: Fri, 13 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749797993
