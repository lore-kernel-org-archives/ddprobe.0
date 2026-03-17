Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F292FE075
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773781493; cv=none; b=OQpzoUGk7ORCwt8D0rXogWoHo+YF59Mq3zNkT/Cn3g9jh0yHdQ9RqePhCBWwvMrFpIDA+JtvLNLz78/4P/pHFtl2HVxC6obbsxDNwpdI/N5/q2VIgV4fwnAWsS3KenyvieHjvprkGLhi8d+Av+Tiqe3kHNUiXsKFspZIQpRYP84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773781493; c=relaxed/simple;
	bh=vv080gZlu7LGNphW7Zh5tXEmYYpp1ZxC4kvKml7kXf8=;
	h=To:Subject:From:Message-Id:Date; b=EdOysY5pe7W8IhmyAZk10/CxfvmYKMy1kkHxUVG0/A+X8LIJ0ukZhBzu34G0mIz/Vb3UfeCXITA4o7WP5B/PTirsYdpxq9VD2Dc4vBgCpQwWaZ5u+5FlMsdZGQ/DoEEi8ouY4Nbc8xBCKSy8NmN+RgxW4psDE6FIjTkJBZruFUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb4NbZ7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb4NbZ7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A801FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773781493;
	bh=vv080gZlu7LGNphW7Zh5tXEmYYpp1ZxC4kvKml7kXf8=;
	h=To:Subject:From:Date:From;
	b=Pb4NbZ7eBnw6IYTeV8rREAeGttsj8GelrfBVABrd1kW+F7q48VSLem31DavEDgBtR
	 kwk12GzGOsSF4G7kz8z2kOGhdRTYIRAs/cTB3YhiPf/Tq3robdRuwde5sWQa8Ks6ZR
	 fjreVTRv0X27Yi4lt41purOHogqDrpiDbbOgrTmsS+/26gXbaNfpG2/5fUuGNGLkj1
	 eL1dsacOjwjA+fR/28idy5rDSYD1DCq9j5GZrMS6Jjg4qgvsbrvj4VZs4XvJf1wyqR
	 7RH7b/eWO7ONLSmFyFU818P6nBK2iSy6SKoAYUOy1k7J+trhhLpJvZO3pPQkEG95rC
	 6eRK81Yh9Tdtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97979FF6E7C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378149361.10575.9983225353022572712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f3bdf40338b51781bd0220f6e1b015b98a8c68a8c5cc56a41c6ecd3d034f60
Date: Tue, 17 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773781493
