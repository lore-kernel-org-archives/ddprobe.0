Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED41BA45
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779580954; cv=none; b=Ekqpll5mxGRJzuAQJmJzb/9bvqlvO0lXBluTccgJVp1E1w2rhy2WCOgtbwOjDOcf8x4UGegik3MguTqEf2XPYTFt21Q1JYv+gxpbKQzwCs4xS6HgJrNUVEoxGEHEvQUgB9GyCfn+0AKTPOvWdYALsHN7MCAQ38Qw50D43S4SjUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779580954; c=relaxed/simple;
	bh=Po8lTlCj9p+HexXUDg2XxJD89BT0GkBsXyZhs6OeXiQ=;
	h=To:Subject:From:Message-Id:Date; b=ePWA5V1y9Av6TAM7SOAfbVihuv7DuUswkqIerPZO/uMOGFZ7s7gShn4tuILI1RT7KgIjXWfAEw3AXoSgpXOVPERvzELHBr4QfRwelAgW6qjh/1PHS/VNgUziib9Jp4JPAs0HEhFn3e4q/Kt2whkX6dv7jjfvvUXIGJ1V8Qyo2f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrolGPl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrolGPl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4C3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779580953;
	bh=Po8lTlCj9p+HexXUDg2XxJD89BT0GkBsXyZhs6OeXiQ=;
	h=To:Subject:From:Date:From;
	b=VrolGPl5U0athL0IvkFD1KP5p5o4ct3NO1C0uxrjMSb3iIJIAM3hQUytwI3T0F/hq
	 ix594ypY7huOAwAKRChCZ1E3YgbOx5tnUGEPWxEB+nhndnM670L8R8qv/Cd+E6e814
	 7Ws+8jwutIxKN5IMSSNQEecZNMQtCxxmk+mvWZYwuiGtZt8qFV+YnS0TZ+wwu2fYOL
	 5wpFd0kMDEMBATXdZuhH9Y4ABQG07dLDOyeY/I52FRsaUVYw8DsJJUUBuh0H4h56yd
	 9sY3KvYSbmbLDvmCk20Cn584lnBAl8QMrljJIxgHdYGjdxSPgwqC/Sz9vSWtmHNcr6
	 4aX1nm1FxLsZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD58CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958095368.1522.212057400401385980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295ac3f1fe85f1104bc9cb218cb6e5b7629b78aa71942528bebd2ae19ba9458f
Date: Sun, 24 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779580953
