Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C20B39EF30
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781047534; cv=none; b=DsoS6g440DRRhAzeJ8OGUTeHKSpPZgEFkevMwBO7Qc65CqujIXYn6rGTsGhFqx5944Wn0kFnObUzmYOB8eG+4tII4e1ka8YQ34GH3akPEn1/l4fyr0gGEeWL8aLxO7dRBeZJ5RS4EK1IHwiVcA9mgnaGW8kNZd7tvXgDqEYiThg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781047534; c=relaxed/simple;
	bh=7o26XUMxNItMkcZTwax3q11k4d1Rx8k5WqDJj6O0SoE=;
	h=To:Subject:From:Message-Id:Date; b=Mj8dmXwxjz0/lGFE9GMxMXuu4mjW54a8ODgalfsxyuaIHUCI/bvi2QnDR9G9V45OcjmhWbGGWSEsMDuL5QrCj9HJCEJrTVaKevGP1poLlOwLLa9Nanz2KOFBn4bH+NbEb3dvu/SoQZ4Esnnh8kMcNacao2dp8KlKlFtQ2hzl9WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHHa3UNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHHa3UNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC803C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781047533;
	bh=7o26XUMxNItMkcZTwax3q11k4d1Rx8k5WqDJj6O0SoE=;
	h=To:Subject:From:Date:From;
	b=gHHa3UNsVNaSf/6mrfV8iCEZbMCQdmYg7wNVCq2lUFBfud0tGD7OwzWMs8FyIbcSM
	 0O8uYZ+Un7+vK+H+5RCEVSR+8/ciTsen8jqmKJnnaRiOXi0+iMowA8o0Uf6jHpTsif
	 jFGXM+2h+G6oUYNfMEJGLgIDTrFbtSJDpHq9dQwiXz1jAic8s+9KR3hPzbXQnUUxD6
	 68/ZB86GzyAEHk05tiSzsBG9hbVdBDagxdsrLehdY2fREWUI6Ar0j8SlnYC+WlaiE/
	 TKuWcrP5UUxGhgaOQD7UerVYUHUFWdsElXUMxTYzNkG5/80f7SyRrPn8PWrF74IdfJ
	 8a5bCKJ4bkJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B187BCD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104753369.16116.6107939556803805877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03597f79250b26288a9ef75fc275ac4e874629a994388d1a638d25868acae64f
Date: Tue, 09 Jun 2026 23:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781047533
