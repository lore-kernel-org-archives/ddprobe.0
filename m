Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01C22745E
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753922394; cv=none; b=djKBYEyUxRz07rLHnEtiGM6n5QRzRnG7Xy1F4TXShRrVRCGjAwd8397QpQZYpSa9hiadcsQwqVBMEYi7QHA8HOZWriwnatSjlA6iW3OocZW7M8myjfLobOaHt6Z8mNn4AkM4BJsx69k8LuvWy/6w6+cg+ELyuvfjB3sqE8WF+zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753922394; c=relaxed/simple;
	bh=rk3gIl75By/fI3mcOY1+UuixVnK5LM5VGQXU+OW8/Zg=;
	h=To:Subject:From:Message-Id:Date; b=DJeZQUFlyeDNIbPeMoryJADtWNL9vDtsI60xeIXsYDRiL4WPVd+Bbj8VJH8ROclKS7D4vGRoXRp9ruwmuYUVpDqnRv5v5KDOJX+ukSzrF1tjzLH+YiVI1J5x0ON6lGDqFL2Cw5PMkeq/P8K24sXIdUjk3lLLtsEN7ZtG62h84P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uyfl9Jbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uyfl9Jbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F10C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753922393;
	bh=rk3gIl75By/fI3mcOY1+UuixVnK5LM5VGQXU+OW8/Zg=;
	h=To:Subject:From:Date:From;
	b=Uyfl9Jbec3iX4I8+enGZJCXJU/YcwPgmydf0o9BfXC/t7D8VJbfCRo9uQLLmRd+x8
	 vnqChN/xQEbm+m6lO9QIVT4ydN+AXzAWjRY5J4Jn1vG7Jv3zlk1DxdNDop4jnovLEw
	 VAjBj10PBJLjUTdygjJSwcviKKd071L4nGipfbUKDrVsFwVeUVhgWfcC4nzHdV1L0E
	 L894D6unPsobxKWnuQI28VUKZmfJCLGVUYt+6oOBWwTagXMThMOrZiu6lSi3pv+ldk
	 z7wC2m64d2J4aAVhoCdiuyHgYEOI+zmKTAJgR+TYpRbaOD44zQQ1TPnd+wJlOdt/+c
	 QgnqTV0uPGzdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE8C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392239357.4371.5941938201640137787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1055923f6d6c78068f2e874587e6514901afa20b592dc113c955730501c539d
Date: Thu, 31 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753922393
