Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207E82773D8
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755634795; cv=none; b=fYfAo5zND1XMlV09PywWNRKkki2YXL+bmWhGvfHPlLRgcWNmWy33vs7rdaCRlJ4nvoujQldp441mIzNQ/FqGL4qZ5sIkLs+us+YLj+FuMD64i9QL4GGcXkunFRfuSHLzCw1N7B3iNJ01DuP1qHZyPLtUccSHY+ZsQWuVwxLhY3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755634795; c=relaxed/simple;
	bh=/D/WiacjDM5QP7IiOHeuIeQ3Yvy5VZmse5KWW6SoGnQ=;
	h=To:Subject:From:Message-Id:Date; b=iG+Z5VMVWp3mxHZnQnHszQcyS83pRhViC5wfd+Hdj6sE4DeDDWcxGPKwC3npkclys5hXEZrgosyECxLz5HYjCKecUqyB7u4cTpUrgQmhyMObU5N1JkaLKYU0HYWjrikjK+B+U/Nx2/6d+FF7k/PyLSWyRjOvhlNIar70GL7xeHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2boqWpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2boqWpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB06C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755634793;
	bh=/D/WiacjDM5QP7IiOHeuIeQ3Yvy5VZmse5KWW6SoGnQ=;
	h=To:Subject:From:Date:From;
	b=D2boqWpC4UmcH8T0CnYJAjPsm8Qgnx4rkKQ5rFZynKry615UpeTyhgC8JOLBMrDzp
	 /AeAou3KxytCS8/nbm9PAyZccS7ZzJ0o/Kn0XnAbBvsS1wB97zYdoLsnPtjEBBmfra
	 Wv0OV+dOALy3sTOe7vY4MRtILF3upzBd3cl3puqwxPGyU2iScCSx9n4bYle8NFItTi
	 HY9ymKb4RgfHm3Kv4BWId44x/y5BkpD8Hb8cboH6P082+GFe1SApzUWXEI3wlvNT9+
	 mT4Qq1BQofyGpHoAItSdY3o9Vu49iy6dzEB/YJQqyEBhIOMUPVln5MEj0N5sPAgUCO
	 6H7xpptDiRICQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028ECA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563479358.17407.16547164618426930017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d79acc44a16339aecb5d82ec8cb2ef83709e1ee900aa6ec0af5a0d37325f5ba
Date: Tue, 19 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755634793
