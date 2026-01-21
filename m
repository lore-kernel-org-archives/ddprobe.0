Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150752DF703
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769004834; cv=none; b=tAbihm6fyyKgy1oNBho75pXgGqKGlzes0LnGhkXYcZjwBk6da+39+D/mkzMQT1PvIl5IaUjInlIPwUnFRnuh4jeLDaCCbnXXZnf67HtNbALL9AJkjyzkPwmwT3bR3pnxY2AgH/Kr3UcahInqvVjD8q465ECGS2vf9kFahuJs5Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769004834; c=relaxed/simple;
	bh=jmzsaOrSm5LnuV3USot3iDDHj0KXeyX8H4Bw5wKz/i4=;
	h=To:Subject:From:Message-Id:Date; b=EwxXdKYLkvyK+1oV7AE5nRLi6r4SkiRmGGBOszSQXGKkEmEslFZzpG7AGSiaIwpq8ncrPnhfZUsYz3qC4eLF+1YQNV1Vv/F+sD5hVoCV2SUzwKhKXB9rvMK2QsPuRMQN9msE8cZkqeW4Eiltp5Xoo9S5dr3S3V3gAQpmb6IP9C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VneAHjvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VneAHjvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769004833;
	bh=jmzsaOrSm5LnuV3USot3iDDHj0KXeyX8H4Bw5wKz/i4=;
	h=To:Subject:From:Date:From;
	b=VneAHjvVGeZFdWaGgJQJ4E634em4T4J5fBKSCP2OPydhiQOirYIGTu9Ay/OnhuRU1
	 Ycl1jz1YKwrS8xPYlqXI262drQTISCtPvqM5Hy1Spu+J4hTSuO3FTPfjCgJbZZUw2e
	 ApWlZnuQC2sQg7rEUxV5RSzmDDsKg1lFG+3Vo5W5wuJhlzdnM/DyIEf5ZBKui2XBv8
	 MsCeUbdtD8P3BN86Mn4DzLZ3IV9ennedYc7+fJEJuG2m9ZlI5m0YZjS+LJ/6e48nQG
	 ltdUFsu4F00oXfW0Hj72jdgTxiaUA798W3LU6aAEaNg6k/k9/gmB4toS3BVcr6dMqg
	 gkCsI6JwH5xZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E2DCA5FD7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900483359.19840.2543633834909481215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24cefa2c6318a3349fe71818ba036f21221464d274cee3fc7386a48955fbb44
Date: Wed, 21 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769004833
