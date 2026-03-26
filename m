Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDB03CAE88
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774521894; cv=none; b=JF0Dy7AUq5mynIFVp3OtWoFSbIVEuBJC9qWjkSJRIKYMT32UFyZzlrGuqiKLpux1eB27ZKMbVfdTKFs/tW5vIEppU/TFVUmzVa7BmOp2bYCfqQZVrifeASoS5pIOoNNSTYFxkj//iuNe6M3Ps7mfQlMsOCtxaw+ir/VnfjRqTAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774521894; c=relaxed/simple;
	bh=Xgew+4roIm58SI5X8BpXsjsOhFTJs9jE3kP6pIJbN6E=;
	h=To:Subject:From:Message-Id:Date; b=AyouiBumOl5EUZ4DVUla3Nfxhz1OblP4aipr2SwLUYKbxBg7JCxbVMddk1QiihfdyElJs+6kC5+cauOnGM3RVcS7qIr61mH21NmkqsDWUXD2vxshV7imjsYl5pmKCR0f7eJrxR6EfmCl0gP2g7tdNDk1wU77miu8cYVOsBn915w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sF/f4qd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sF/f4qd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6094C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774521893;
	bh=Xgew+4roIm58SI5X8BpXsjsOhFTJs9jE3kP6pIJbN6E=;
	h=To:Subject:From:Date:From;
	b=sF/f4qd69sXRhglu5f6qy3EYFrQWnF36RziT3BTPZ8ASJMkev6NCtNU48h48htNcY
	 vAus1fYcanGR1WqtPi7Bhe63dAha8hrgdrfb4qr/ChealD3a4JI0qKKzcCDOF+n09o
	 eON4DdwUEencdKLOCu5ddhxW6G6cVQCpiQNHS3PmkA9LhJZyeHTmDiIy4H26mgHi23
	 mo0ztmBFXJyObPah2n98vS8BQ/c2cKSvt6Eb7I7MWl+ap1MQn/YLmlKzM/XDHQDjmC
	 17eylIhP4x+ER0Mkq+MKaAjwbMVeW4p2SNZy/D1YekLvMUMSvoH3n5xIPvK4+604OO
	 QVg5FGnHWQjGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2110A1E63
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452189359.1827.13057253665486598813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba80d5962a4515816b01f331aab17d071b27c4e04e36eb19f39df6ad93e72d2
Date: Thu, 26 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774521893
