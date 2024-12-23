Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8141FB4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734918954; cv=none; b=Tn1vppnTvviyq9MzXYtLZfJPgxM+R2qvr1OJm0DaVyqVbmhkqI04/v9InjBxuRN35fMRQQd9i+Tyb3qOUhRCcG2farhWqbJ76bQfQpAq/1HvMBU2zHxw7hHotJ5EQUSiNshIRMUn6k5qVQ7Ay4PPRIOZOJ8YfIg+E7wkm9qzL5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734918954; c=relaxed/simple;
	bh=+fkbTHGjWVzSvLrD8JgRJIQfE9lxut+JFE6FEaObGII=;
	h=To:Subject:From:Message-Id:Date; b=pKUW/O/len7DDmD0GraQBXaCRos891UCBnlsTztnPrJkk9LH1EAg5sPnH9OcInrED+O28OwKVTyGaEuuUlcX6a8SyptQ/TkrO5bVmqR0q8j5ucIKqQinz1dwW/TSX8AGPlGDu2V1Gt8f9exRqKE2JiTtjErWR/fdd7HLqHAvD7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovyymKFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovyymKFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7DCC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734918953;
	bh=+fkbTHGjWVzSvLrD8JgRJIQfE9lxut+JFE6FEaObGII=;
	h=To:Subject:From:Date:From;
	b=ovyymKFACyaCCy74n2IpTDzYDZ0QhkKzgFpocQa5k3oYt1I0YQI9XrPSTNQZke7IS
	 LuuVj0tTvjJlyloRhgQ17nwsP+pMfttLKIZYFCtQ0CYUyy+O0+FEZvtTwV8gIHQ1Im
	 RrFUI8rQjgEdUCcb+/rGW6CsXHCMmbrLiGFKzmqKZNu4s/46e3Rekc6IdTIMMsnDRi
	 dD3fQ0IT1T/0ZZORSFqSCRg4ZqrIX0wUXtrQLC24rgiASgFSZj90/xOiKelr4Yw8gL
	 hZdIrpz0pnJs07rUfdF98HCCaps2zV2+EwiwrwU7JGUw3gLLlxxp2QbPryds3Owa0u
	 CZDXvaBhwqGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9810EE77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173491895360.23883.1519876599632278692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24d8c2eed008b843ddd472effca0d51e5d22445938c7f3ad87be924abcf6adc
Date: Mon, 23 Dec 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734918953
