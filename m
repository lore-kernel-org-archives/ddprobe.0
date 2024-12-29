Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3948D13C3F2
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735515954; cv=none; b=XGuSyV6QtPgkXNIwGpkGlrjSHIU8rnMcDB8tYiEQA1bA9wW+nOPKuhpg053uWURFDcxH9cXMooS7z+r3K3f5YEIadkHBR0v7AYZ+3fN/2AtzKAeKUFNe5hZcwB6WSJ6wu+ns0Qewx/foP2iETPQYJQvSjEUexrEsg0/hCpXgYFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735515954; c=relaxed/simple;
	bh=qrrfkUQUOO7DHFNOT9nsJxVih8/NhiSscFsLWCnqQu4=;
	h=To:Subject:From:Message-Id:Date; b=megIn9S1KrBuEXGYPBix41QpCBx5Y9V39mcoBloq9Irkwal/fzqE6g99iOuyTYL60ziAOgIYtVrojop6s+J2hAd9XPu5fauNlK2rmGZEZdJ5ZI/zr6Io2ZXyKgIklV62YorH/UDN8zPOdyaAEbm/NV5RfcdxE1iDPqB2yzr2QB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnzBzFsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnzBzFsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EFAC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735515953;
	bh=qrrfkUQUOO7DHFNOT9nsJxVih8/NhiSscFsLWCnqQu4=;
	h=To:Subject:From:Date:From;
	b=jnzBzFsMI8G/7exdBAE9IYFmPqbVSH5qIGqUwEuTO3Nl/mLJDhpqCJ5+fhJcRb7QY
	 nE0HkpEj1a+f9U2JQwrhn8A5nx36rPddaUTXwg03bWOYT59vDW5E5OQ/7H+Zvw79S5
	 IrIHRXD2jO7qKbRYkRfq707zxOYmea2XQS15N46eJj/WcKst2ohpwBG+xnk7eYjIrq
	 fPYBr/90WwTLoTRo0C8ovGyVMfoEnBIWpfWv4mJWrQFrp5qe0QvwDKKldJQnmJJDdL
	 wpC4aUSrJMGT0D49piEMmr23NC3rhbWPrq0LYoqwYqU3mgjXLP8bi0xtm2246dSw4z
	 EM9OaLcyBMnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1AE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173551595357.23770.13469710025091641654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b639bcc0429fcf639c90063d969e20a7b267b09805a65e458c512420c6469c
Date: Sun, 29 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735515953
