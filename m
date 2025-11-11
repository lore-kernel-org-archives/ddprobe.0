Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211F72E62A6
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762898394; cv=none; b=h2w5FU7XMpfNr5ZpqcpjzWo2YABOwFhj1YEidcqFNFODfTDOE769Ag584tHbG3CDGyx6SFmAqpHpfzNcIhQ+/IoRGpNFh+Uw7REFWRqX/z+M9cSa+yR1tx19wBeVsnIbIkjQWForrjAUF7x5/4uc8KaYPO+5HvLlT+7LUNjS8ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762898394; c=relaxed/simple;
	bh=dZMqnE/6K/PVr39hv7YG1Wujfl/17CsTD3u2H8tZRBg=;
	h=To:Subject:From:Message-Id:Date; b=jG3H+GB9Tzi/DAGZnp3AIP+WYTTSwZnU7GVuDwYfP93IULNCD8H+222Sjc0wK2/LEImX01hTZ1jeHt4Iu9+a81uP0sDCLTA6B1uXOEjIL+2zJY5ql1AGK3p4X/9girj9Aocyp6bOaBBwyjzyzrlu2iWwZ3Cvhw2BYrMCisxRiEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbYo7EBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbYo7EBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F4FC19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762898393;
	bh=dZMqnE/6K/PVr39hv7YG1Wujfl/17CsTD3u2H8tZRBg=;
	h=To:Subject:From:Date:From;
	b=KbYo7EBdsTt8vEx4qqktSGW0BAyoyZBg0YgpY4X+eFQ7Eu+FQOk0+ipwyIsa0sfdG
	 U4NjN67v8zd23uzh1W8/ZUlCjWkqauseTjoAwNwv1elCXQLUMiyeRNm4ifoL1BevTG
	 EMc1BQB9AiVu70bXuciSnlcWssZSlFcbYhykYAqE5EJLxn8mgnJWzbCXDVyAlUtksj
	 TE8/G3Kzxj2C7cjEpnfEqoGPl7CnHYWai+HOxMGLgqd2aqrpAT3GmWAVpQiL78XTi9
	 02hekY1GJp7ZNFeK9d/G/F8VlucO44j+ewqdq/9NBq15/jJ8xtnc82Wn2sban7yQNh
	 baZ8KHLGvXOww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92093CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176289839357.6242.8552952431268689508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf6f782ee8c51e33a93eb54510573e8620d83edc183ead8b44e13a5f9b1b204
Date: Tue, 11 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762898393
