Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B4E224234
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781402794; cv=none; b=QgFip6XwGs2tnhx4iXhEvOOspziu5dhnxkwq0BB/g+d6b6Lm7StO4UEZ9oiqIV0EgfgJ+0CB2oQNr8sHxEChGqCQShN97hlU7TmsTLI7Sn6XNnCB03MfVYQ/FpE9oQDDa3DlPHKlnHifwOlbPyW/BS6OAJTPlz7meSD2Zo7xwBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781402794; c=relaxed/simple;
	bh=ZlPGWfSJ8/5InSdyP6R1bQzAazdSFp2AAAGT8KtCvz8=;
	h=To:Subject:From:Message-Id:Date; b=UNd/QI//3T+PHZv8zpB+38/setnCWiDHZRnEmq9lsm12m42hFGtwZuTZNGZxb8FPbRG6FQHzgnhBTvTz8ENNkrNW2/8PlBH1+2BeI4sZrHCCYxEoA09s2FIwj5CzIroONrPxhpGRBHXDR73l0sDZ4ShqU7QzWVuOYEfOWnAbEkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2yMv1pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2yMv1pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD64C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781402793;
	bh=ZlPGWfSJ8/5InSdyP6R1bQzAazdSFp2AAAGT8KtCvz8=;
	h=To:Subject:From:Date:From;
	b=b2yMv1pBZP4Ra1BjAyF3QXnqNL0ayJYY4RYTO3nZCrSxcbpaHLYLHFJK8pt24YLaz
	 7xasZXg3XyarnqvT7VFheGtqF2VI1oViiaT3BSPCoKPZFLyFoU+UaFjN5GdK/qKNVO
	 uw5L0/7rvlKjxxQ6UfH18ALmt84/GtFv4Ke/ap2eZ1GBKeUZ82CCz4ErrQZrHFLdog
	 2nJqGYEbmPIKZsvcboRdgOFCYKQ9zzGD31DJnR4rE1H4wynHmpHIkwYFP9PwJm3X43
	 R5xgtCNuHyJwCCSgq46wqHIS1PRa6sqrDVbazG7424ttFjCvhJZjHbQRAFHCtpAXXD
	 hpBJq0p3hyVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B449BCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140279369.10223.8854980060962111364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8f4275a29f919336a7c59e29c849bb2cd079a9d47efbcdfd20b97671e0b029
Date: Sun, 14 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781402793
