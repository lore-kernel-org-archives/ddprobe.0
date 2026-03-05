Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A922304BBC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772692494; cv=none; b=nQeMS2QZvev4TBbEkQP7mVpYkiQYPv6w3+itgY5DKV/VDjkGiXMNk310oMYIN7PC2TEy9a+10FDuHk3bhU4/YraWFw7r1dab8Bx7N/vVXfh/yLN0WhIqbjZXeCUE3/+SWxUuKNypdoWl5dHxvzHMZE2z/GR4rTuFqIDs7jA7jH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772692494; c=relaxed/simple;
	bh=RDp5Yze0rQOelgCkUZDsmso+5T4Oyq4mB/larIi9faU=;
	h=To:Subject:From:Message-Id:Date; b=dqRFoOtXoW61sggAfGf6rS0oLclbyG+eQ/xLx8egh0ehw2BgteBUXOA2KFyzEr1BOOoFXge3IMLrps95IQn0ZFH1K6v6U0tOFbIskTiqJYmGyT1L7mqhAsJ7LjKRrXFKbaubATbM86qjlV/7znVUXZVWGys4JREgAjbwIr/Ux5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owG3OjGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owG3OjGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA32C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772692493;
	bh=RDp5Yze0rQOelgCkUZDsmso+5T4Oyq4mB/larIi9faU=;
	h=To:Subject:From:Date:From;
	b=owG3OjGda7lclbG8QAKLWJlNDm5qozBsn13hSD8sy44Lz6HIDHjcmdggjGVWvg4Hy
	 QnEhchVwLzQWcSw/ZsAoXdPL+dBKgpGeQu/RD1K2bda7zBQ5fCc0OCrxMEZGSkEJ7n
	 t5MehB80hBHNYp1WS0HEAsDxK2YYp0dJVoNDBqpItkFRGXa9HgSDX1c4QGm+VPLb8l
	 NyQZiN88GBoIS+J5yGInUdsi96CXBgBL6f8TtYWBBB7Zg2pmIeDd4VRKiiQRwPxidA
	 iSjSxc6E6dHW8ECWI+Ef563PWgTVrYMHeeFON5syGMotH/zNmPedtzjkRVVxc3Fi+w
	 XYU5BfPY8dwTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF98EEF309
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269249358.26831.4745716110032638332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567124485fe4a1f597b7794d341e9979dee22d2ceb73492ada341049f2acab2f
Date: Thu, 05 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772692493
