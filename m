Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2C91DEFE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745400594; cv=none; b=Qbfunf8OuV2s5huMX+5cgs+gYnUDLo/4YQecThH3sfTZoZHe2O8J1+SE1cmFOdDAk4ZughYXmqFO02qXnm8O82uQjJGw/1unGM9wLx3Gc8NpotpK4yTij7xcSPitEl7aJISoHTtsdVaWSm/+x7yAYCa53wM8J2NGQzeoey6Vs2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745400594; c=relaxed/simple;
	bh=2TWmtSRHJ+gvWT7WhlSnk0+UcAjESUE+uLxP+g3XddA=;
	h=To:Subject:From:Message-Id:Date; b=kxujNVwn/vtkMxaiROeiTBfZP8CJYoF0AyKfL5xWnEAUaucBcK3NXvbid1IDHHiX5pIYIMKN6CALalw/snKl1DwBRGodAYgkwG44EwHdcP7shFNi1O7PmZ4aRP4IBg1KPhgda9InQU9EhQPyhKw67U1VetVpO45g1Gzv2eozcsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0Uoc0Z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0Uoc0Z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BD6C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745400593;
	bh=2TWmtSRHJ+gvWT7WhlSnk0+UcAjESUE+uLxP+g3XddA=;
	h=To:Subject:From:Date:From;
	b=n0Uoc0Z9gR2keDfCXAmjOH6JJBBAQvqvwSR0cH4s42SQ9jU7J/bkSkViuprTt9dD6
	 e2bKJRu4RPRqwruD9kxwLx9eNZLrvRcxNG5NGYkj3t63egB0OkQJOvSLyC7bL4UUVA
	 I0Y/7Thq1kI7wXf1C1rbcnQX4Fcm9Zhcg1vCpDOJPnHaMagNU9Yth8msfZlTHZqe8S
	 mhdEfoDS/qkCq5DyNpEgeHCUAFy9bA5RLoKW0MfyKATq2JTRDVagpvpoDzjEo1/WET
	 pI4pM9FvKQQI506m7Db+3tf2R7duGN9q4Xp+6lXuboFWS2+dtGjCqML3IlQvw6Fd0H
	 PXu/4X+UUmoOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF3C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540059357.940.16343100643744424408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ad5f3d24550a3d54cd94a602663e5c6e972161c96a3d3f4b19808283d22c96
Date: Wed, 23 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745400593
