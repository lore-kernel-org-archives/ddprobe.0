Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C21D282F06
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786336834; cv=none; b=SeFIaIoQNVrjg4Wy4quYt9MxeFMUdNkaKuqAuXhvNu9sL5KfDTyvGMBs854ZobfVLZv3t9SV8GKa15rfgEkBqfpBZRITwGIs3HrSQhhmVmvPkPpPa1sZUj9peg11EZe5S1/TsSMsK7i/7pHz7sOYyP0sAHJKM6pwR4sjVtpkYR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786336834; c=relaxed/simple;
	bh=deGUJA4cuyyGbvu6eUCbKqx2WMdkixj0UYcGJefM51g=;
	h=To:Subject:From:Message-Id:Date; b=awOvPnq1LpNkoJLm0D5xJytmj0lknG4XuuHngcZm0uLRQYcofksmc1780fqLwTpPFjZmI3ZEtFQR9mGzrLDLvGt9INMN89Sehna2jxoIWbAVcbe/czVd90lB8w3SJHD82ESZkaxxd24nIU3Xkd33N+G0Xv2jP2Gj8Z/wpRnOXQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRnWVXhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRnWVXhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE16C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786336833;
	bh=deGUJA4cuyyGbvu6eUCbKqx2WMdkixj0UYcGJefM51g=;
	h=To:Subject:From:Date:From;
	b=YRnWVXhOsE+I5FLEb9WI1gy/TzbrwvSxRdBZ941F7VwzlAPu8m/xhTM27EsZQNkqU
	 3cHz1yz8n8pjL9t9RTxJ8PCHsSp2DJE16v6XqNrAVQ2Fi/bN9tqGyWx/pAb6XyvNlB
	 DBId2ZkdCWdfg4EPVng5PUU2ywHPEmZoMvt5H+oDVUtJyNHhwK7ierjch34z6Ch+9Y
	 72HTPeAXeSYcTRdQNeVPyfFV7OStvZl2+SrGS43wR42y9emdw4ygtlXCFlJQmUl4Oo
	 2SPT4oEkwplY0Q7u97dqgw6dECVbihFO8mIcoELl909Rq67EA9bEuTUpe3bNER2JsN
	 SNya0FgvjMeKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4647C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633683370.6089.11240391771333646877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ea4bb8b2a215926d88bdf574d057de0261c3a50f06742a49041ed136ac37d9
Date: Mon, 10 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786336833
