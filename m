Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201D419F13B
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734640554; cv=none; b=OLWDaZfjzwT6syXLSUutUbcRKsHcqMwqD2HtSBHJV+9dYqwAWu8oTtzWuy9s6Yg3ZOFahpFoaGUFVnnTSLRn1LyvVqggWtOtrdmYXV0mS0sVGk2YqLzovxd+/B68mFf5LziLI8iKzVJmZaRHkDY30RKZi+CiKkFjvCEHcP0D5aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734640554; c=relaxed/simple;
	bh=XqPJDe9WSmpo+jcZFRGw9FQjr5RBVMupUxzBXZeacQ8=;
	h=To:Subject:From:Message-Id:Date; b=iZARvIVIXL+EG3zvbWZuWgIcGh5+bSoilHrYAN8Irvt93ZklQKK4lO+yg4RKEntoDO2jXotVeWDUxR+FkaXMq8V1oFF8zsL5zZwYcjAgx7v9M6mgK7k7DY7yzdrFcShhmQwgYLeP1AslkIfiEzhnn9Is2nxADl4+TiIyYB0sYhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4mbYr4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4mbYr4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8C8C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734640553;
	bh=XqPJDe9WSmpo+jcZFRGw9FQjr5RBVMupUxzBXZeacQ8=;
	h=To:Subject:From:Date:From;
	b=r4mbYr4uY+5qwKs5VW/cfOASBzHjfnsqaLgZPqroWIg4vU6v63YXuMzSab4qOwBck
	 gStsQ5cip4zQnxNn84X2h85Iq5K1WqhXHFr4CFLxZy0WLUFbQVKgIDb3WCj0kvxzXC
	 WSBI22dXrIIn+Rp3cxJPdtQl77qWswOUZqZzqG155tMM8F1jWz5cXqvm4DXsbBE3Ra
	 GvFBwiz2PgwPk8Wwp+TPxjTDltnGCwL9S0Mg3YuuQavatAdpTSYI7LR8/cb0plMHSh
	 gAM7QFcXBHCT8r1c+rYZgH+fKqdL66WSNFuHo1f56zhGBowuVif4/PUezRws4Y9z2S
	 a6M2Pc5soTEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98751E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464055361.26157.17789777408553376883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc15a17e6dd6645980294ac801890378a64b5ba9d03f3593cb369aa379cea225
Date: Thu, 19 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734640553
