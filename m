Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736A51D5AA0
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743351594; cv=none; b=iq2lf2AOENd9pQzgcXSZON1HmqhLqZjiSaxhT9JSzqxm5W6C4B1ma6CZShpQtU4mC1Nd0KaOEt6Uix2b8C8ngcKQsK9EeKFR7R+2fGONh3oO0RvGDXCtGNGKv7SQ8wBupYQp9rdwNdeoRW4RQGisofxfShGRDnwLRYBvj7XvIoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743351594; c=relaxed/simple;
	bh=VDNOtUBjXaaMhz9hB5x+7ZC4P7PWTsel4CIJP7exblA=;
	h=To:Subject:From:Message-Id:Date; b=KNQgsIa0ZuL5lEIttudOVAWSBjVum4Xj2n19EaA+K73p1ibE4tKOVA4zrAGs8N/6jXaTndnkmLeTI/spnvqxs0cd6QZeTiLaYUJ/E2nD8yFHiSb4BQKaycjrgF+091Syk3UxBxqNtCELqyea1Cmk4N8TAe/zpc0xfvBFSnaieXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGE957s/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGE957s/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E55C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743351593;
	bh=VDNOtUBjXaaMhz9hB5x+7ZC4P7PWTsel4CIJP7exblA=;
	h=To:Subject:From:Date:From;
	b=pGE957s/4QXfV4BfTz5WKmFJ+QzqoP1JY54Nn/QvfTTNbj84p5jM1Sdq1OAmOjmJc
	 g2Vszl302YPpNXTCdh5bujXCQdv2gZbNqYrbq5UMEQYlvDSQklrIk4ZSAh08vAL/EB
	 HlHYj1vLYsj0gaToTyVi66yvCbLcf1eqVxxv+wg2c0JcoHZbBdXkb6xUfekGz0samh
	 Ovwg4iClpfQsXcl+NlBZj+88cRaoOLd0zANZlwVI1pZGuuOpFPdNrSdUHeZRNi1nh/
	 OMq3bfE6iQLoBouyGpV+AOp+kBWKlviXknszwShAqqd4u9ogfXgVmCxnNqLgwAFiSt
	 8Aqv3EmFz3HOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FB6C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335159362.24977.7879194385720439180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb19bf1f8ed50eaa1bb99f1ec205c5a7aa9c11e66cedbc7deb3efb96b091afd
Date: Sun, 30 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743351593
