Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF09157A46
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742840995; cv=none; b=CG2/HKNUBniMIH+0TJqV1hDaN9WZm6jNADkfgRWVtXu9f4iFxGFwrV1q6zab5B52Adk9W5l2Aa+YS0JZnARXXLu6K+UtA0o3HDYbS+5CT4iPDvdpZxZx52sDJJU+I2S0fhZiE9PiAgxWcU5aw0FaqepXdH93ob3ccZLs4ogEUK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742840995; c=relaxed/simple;
	bh=S/p39JKxMsynTUO2Ebo5EotEQcTmLdObUY58GhSfO+o=;
	h=To:Subject:From:Message-Id:Date; b=julDEIDPI62IUG8ZtHnWB5heO/lt6bU7PmWfDWvHqOL2BhqNRg59auzeHtA0n6u2VPPAw05bt3JxnbH4xuj+JoMD2c8N9h8Ut2xexUwLWVMZhWfLc/OPeqIE4vrHIOaSPompG/l461vLMP7x/Fe8V9rE57/ooxmrCH3vAya4YLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXjjOB+g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXjjOB+g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B5DC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742840993;
	bh=S/p39JKxMsynTUO2Ebo5EotEQcTmLdObUY58GhSfO+o=;
	h=To:Subject:From:Date:From;
	b=sXjjOB+gg/WhAm4u1UpzDdBU9lQfG8j/H6JGHsPgN7N+MFKfnTGytEHZw4gKX8Hnz
	 ziRS7tLsmXzOWWIq9ywIlkcym9R23qAuHSOtCbHXdgR0r9+1Eb87oy68RjgkXD8GHE
	 X1UnWOwIi8QV9rhE4HbBjVNwiDMqlryfQl1Px01NKMvo/tDmvqs1YLiCZcvccMlsYK
	 8lZdLxnT97xL7rawOCjosnBygSDfR3feTsSK8UY1XD/jfdo16ArnXb5ZRbuhvEqzYf
	 eY7dJctrwsEZceZQVB85oHXJV64G8d1+KtxQ+HECzJ3/05puedysvBW5Fvv696rHGo
	 VXTknGMBuJuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A8C36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284099358.10222.8534551594160895944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36c8a3b1801fe672021c259273d339e08afda21a04093cd4a163c6d06dde247
Date: Mon, 24 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742840993
