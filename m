Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D7D34D902
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774662894; cv=none; b=cBx1dF2umlWBjCm40PR+bUY/jNXEhGa3Ri/fLhyVNruYid7l4t7Mf4Kl/Mxczqk7lN1HBBpPC28Hw0KVnZiIGvuLB4ubeLVRE7mkZDnjFLt7jpx2UZoYFqWq9izmWC/5oRPcU5wRgn1X/VZsa7onUBMQPz+pXXbuClPTO9UzpWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774662894; c=relaxed/simple;
	bh=Iv7JQ9GU0g8eIjMQ+0hIsIy8k/agUeO+nkaLlCBr57E=;
	h=To:Subject:From:Message-Id:Date; b=H/vyFTGTqIeUqjX/4ZRriTKj569j0plTiq40uULIueBOW0Rb2LGo/2YYrmQ06Lr4BziK/OaCWeVI7cLjs6wqpTDPSF5ha1OOUm1vOG9/Oj3yAeEaqdxijGR6Gh3EdJkvBsT4uTRceV10wZnVYHTQV2iIHtIwmphuWu5rLJI1l5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APPEk0n2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APPEk0n2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA209C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774662893;
	bh=Iv7JQ9GU0g8eIjMQ+0hIsIy8k/agUeO+nkaLlCBr57E=;
	h=To:Subject:From:Date:From;
	b=APPEk0n2AGaPVJkkxPFhej3oQ6zSmXaGTE3irF0Z8GxB14IsCubV1TZBjTWZzoPO8
	 caowIm0HrmeOjA65NoT1jSteBKj5l2zRVCRUcTK2yaiba8VhdL8GsqRx73Z8Z2Nj59
	 4VvZF+q+SCl/UF2xYJyPPHVkIY6AUbbSJ9jogMSha1j9pqU1y52HPGK8bStNlBFwZb
	 D1CgmXshkqc5MUZqPVPefnJf9l5dXJ9TdHwvOe+UT9gr/65rLfpsKxRCiWS/ezpePp
	 w5+qXn4zrRUTGotytCVjbH3C5Phjwhi71Zdl5n3Pur5IcR/K3h1lzmMHQTq0DtzTeu
	 w/bzgKlCJivzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC310F3DC0
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466289358.28451.13031193672450758813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d26e41f0eaf1fc7f90d848b6eb1945afe554cef6f724523927c7cfef1002c5
Date: Sat, 28 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774662893
