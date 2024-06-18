Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE7B76F1D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718696963; cv=none; b=pfJtYa6IvtQM/VfeIVw1nG3swpZ6JuVttNq9obO4wS9vwJSGP2KyZD8PdssQL6iB0FdbikDuHLHFz5dqz2WqNzJmc4xOoQPTHK09QcAhvvPWZp4XNWGvV98tF8vzRL4WbDnN5w8I+3uO1e8Isg5vFv34KDDSn0eU91ZtKAznvzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718696963; c=relaxed/simple;
	bh=gIAeUjKzg3iE6mbhAxS8Gsv2ik6GGQouuVK9wsasFHo=;
	h=To:Subject:From:Message-Id:Date; b=IvTDHM5bYfB6bl9/qCXRQPDfB5gZ5I84awxJhJcgpBbuSRUQ9nrjzBRj645aYMA4Y2RA+pd0vbIaUQkfN1i1QX6mw2gzhHIc7Ck5/Pk9N769JFNait5d8XfbotTEjvFiYtG4MbsyM099S04Gkngt6lzoUUkdcR924ILarsYLGsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BarIsq0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BarIsq0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F5C4AF1A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718696962;
	bh=gIAeUjKzg3iE6mbhAxS8Gsv2ik6GGQouuVK9wsasFHo=;
	h=To:Subject:From:Date:From;
	b=BarIsq0dIaOXNfr5anCMlt3wM6CpAFsW+pfRs0Zk7GDOkUaaaxOJY+qfimPzDwhZo
	 4t7HzaI9fxfny8+1uIlXWgWuKovUsNw996LNsjLrP8eRGQ1eN4Ol4oduEkZFN8txS6
	 avNYaKXRjnldNjunwawsIyFWakpOozmtWrvFjB/bfljEKylo5CRbIqOsmyXurEE/4P
	 xw3C4YxBMJElPtnCgo1KrMD2YvJkKsJZk5tQodJ5IW3KYE7BQ7nW5OwQgFN9iG7HeA
	 /6wu4VAiDzMW8j4uSCK9+5INBSRNJhXbxLkprxfeUHK8Szwvnv9MtIemt/cTKKUus+
	 AFlYOxYjHXoAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12ACC2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869696278.18178.7692865206142984778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde212d8301b14e17631c9460b356b7c90494ed3d245777820088a45ae090e78
Date: Tue, 18 Jun 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718696962
