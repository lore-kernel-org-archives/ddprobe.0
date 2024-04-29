Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F667F9C3
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714384943; cv=none; b=D/0g71XZorraiQs9ZOMHWdTfx/TNaJliEKotJzQRC5VxsirPxnLGQqzyGAv4yU5T4IDqOutPij7OFUQ5aMvwgbg9zaoJGaF2afEu4e4aOSkP4Di9ZarcHoHwmHZgW0QHO8B3NOeLYJ/98odGgNrIXwo5CkzuW8KAdbc0UYg9ULI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714384943; c=relaxed/simple;
	bh=cQlBsXQMkg6WQl4/CiqpfXN4mcH4n/wsysh+f0jllV0=;
	h=To:Subject:From:Message-Id:Date; b=e4FypMR4S1vZiKQ1hmbV1G51oYnQJAV/d1XBr8U5OqfcoHcCpjW1/0rsf7+eTVt8yXYB5kZh8AS/6s2MZirmE9BbI/bmEr+u0sw/rdEvJbjSxIR9kpPvMFc9sQr8AOQsnSrGQKg8zDA+ezuzt4AsHEx6QtsSIQTKUPBDWyYo1iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtSgbj6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtSgbj6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18BBC4AF17
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714384942;
	bh=cQlBsXQMkg6WQl4/CiqpfXN4mcH4n/wsysh+f0jllV0=;
	h=To:Subject:From:Date:From;
	b=UtSgbj6lF9yexl//GCQTGyoMvRfsl2Po0TJoQenjN72nJ3SJjQ3lL1wVOf5EKplI4
	 cGFMRTGBrZiniuc0BMPvqeC0VKsc31QtMZaGfsCeQNX0G7PiRyZWXZUrdoiOSezxbN
	 jfKeuDdxZf+PcTuVYkwXj7I3yEOuErKfGO+kKTVMfbkUJCa9G80il5YXh3AqOrzV7D
	 HXZQSOjHBR3wuSVmCgHmxL3XzSHy8BSOPJ6k3UMpybYjDYVf5bgr/8VvD5/rybhwWF
	 HwtFPVItTrGsH2eJm1kDu+rZkQVROOsWg/kMpdi6O7flsdsHaoEUulvqAzMRPTaKGB
	 6fuG/61bOvMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0BEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171438494275.9535.9323494514512248954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7ba072f6a6b0d96f0118aa75cad23cbb6ef515e882a6f2f06ce417f41538b4
Date: Mon, 29 Apr 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714384942
