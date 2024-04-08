Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041DC3A267
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712566697; cv=none; b=TDZwUtRmJDdbQDkvgGV5QTX6a9QZjjbj840Jn8E9eFedlejCWwyi/1zRhHggmL8YKlcKF40WHi2MA9h7oG0naq1so72M0459LbIZm3VQy9RWQ+06ML4MrdAFRpPzui5E2ZbPh/fMZ4Nv3jfBAVt+LTPptQ4q8Z6Q4W0TcfbpNAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712566697; c=relaxed/simple;
	bh=uxI7e8OOG8OU6DvJMAGDySy3eWHcuNoViwhRUGehuYE=;
	h=To:Subject:From:Message-Id:Date; b=X0r2fYKLQw8ydcyfmur00TXVQhPeVXETR86rd2zsjOMzO9ZOz1z6M16RSbgKEvuXRO5qe2pE5FAPOWimF1vNNb1n/rojpscl5iebnmDJJEz+jpTp/7ON4yTJuzrb0kg4f/S+smQN6Cka+9tVFow15RDHRyUwhUc1yZFPDFJ/4hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2vewT9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2vewT9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78694C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712566696;
	bh=uxI7e8OOG8OU6DvJMAGDySy3eWHcuNoViwhRUGehuYE=;
	h=To:Subject:From:Date:From;
	b=Y2vewT9F5esbN7AId66jEUUPqa0UJBgnd7huEC4OeQ+mOMGnPB8qOU2j/6HQ7vGIt
	 YERcYfWecNNz19g9QYufVA/GLUNJMPjIDVsBRq/8wQ3ge1VUYyJNumIOfKJHGQ2/+d
	 rSOnUB9mZpYjFU3dETZHNlF+J73j+mTEQ2VkHTTBxG+hwkfY8sy5Qh0D27Ectq7JRz
	 /usUUE7hBne2WMu0nh5afUWPMC94suRHTU9wO4r1BvlNs4gwU2TgJyuLU7ihCGDR8s
	 FFKPJpBCVtfTUwbjwQr/BwEY8msonIBXuwAVFIiiKazFPr8ZNdZuIAV6JNun0uTCOZ
	 1wtftrJVCDVSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C7FCD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171256669642.2742.9919535710651995778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec755725005fcb452ab1e43a33e348036771163059fc1c8ef98693cf9daebb8
Date: Mon, 08 Apr 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712566696
