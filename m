Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305A716A395
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778941234; cv=none; b=t9kzPWhTJ6g2MhWbwMnGGtMKZl9d8EBDlVNw/Xu5OvqLxaO1BpHotrs/D+Qvo3VRSDuX2zb3aEd9B/gzG/9Qxi+BOVqgzn+hvuudnnGv4hjclC2qPDq9595xmkj0xtStsLAs7q9TMWBGWN+wBX0fOwR78t8PzOZ/iiAZ0oVMhCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778941234; c=relaxed/simple;
	bh=gxPCoFY5KFEEfj9wlfgNhGayk3+IWWQ+GaUKJmyg24I=;
	h=To:Subject:From:Message-Id:Date; b=CGESrFBQ6vJ0y7FOeH20ImSdFBxzkgEYKmYav7go724FAQ4S/ylE/USwA9KyMv76//G90HOO0tpGXuxmV7e6VUtm+r+SxEm0J5E28A/Then93aKim7HLZrHJmWlxcHXmFL+FLUeQ93oCI8kdiPI/lMVHugM0kwycl6lXFrecaIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYiCmvop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYiCmvop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63DDC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778941233;
	bh=gxPCoFY5KFEEfj9wlfgNhGayk3+IWWQ+GaUKJmyg24I=;
	h=To:Subject:From:Date:From;
	b=IYiCmvopBM6vn8DhG+JQp7kHO9mhtoHiIqoTCOtanYGZTD4m9mmVYIoWprlB8NGQV
	 RiW0vDUfaYQNrLcchWo8ZcTfu7PjZCYu1AhwwzPcWvCmY/aJRjrhhRZDbKDDOy2a//
	 vE0SfZj8pYr2dD84uzcgFlU/DQFZC3gSxgEo+zIhmzhV6eSv8YKg+o5/pow/Grjotm
	 jGPSir4Kx+MgHelpwFSGIBvT3v23dwwg3PO+RwYyApKfvWBYU/HhKJPR6Gi3j2e3kY
	 939dbavU0L2TcStFWCjVwMDoZuY0EQlInSkd9myqMHaEqUG50mQ80fkdddZ4nyQCM7
	 z/YgmCrxMSs6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D08CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894123370.16450.14895582305881622446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ba80750cb24c7dae2277d5cdffc6fd7ba55f1d4f20a52dd7cae7ae262db7e0
Date: Sat, 16 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778941233
