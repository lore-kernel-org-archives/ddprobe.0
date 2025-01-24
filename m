Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7E519005D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737735354; cv=none; b=CSfcbikIeGsfsAMeOaavUg4CAEUeaU0nofX+GW4FywVqkYd5XUNNTw83YeGb4UmYddTU/gHOgaitRpbwSeiQwCM2Uzkk3Y347JNYF8oLTEr5lPp6v36wHhMSmlVhpjWrLule6heMZYLZMB3+0ZoXe+hgEchIW4p1pVE/pK4Q+Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737735354; c=relaxed/simple;
	bh=DjgAxoQHRbExnCiJKv/fhTxcQY92ggj/ESQzVaHTEbE=;
	h=To:Subject:From:Message-Id:Date; b=VMlCy5OtROnvLzaVvgj/1wZ/24GaOfh/9A3zS8xhVybKNqdX55IY3ReioTSYETqAMIMgzOgQFeT/tgNzowkZcI7kPesxRzsj3mT7ptJw8wXjaRjZMI8JbaEzPMTUQz5RX6PmbclgmeW0xtAT9te6y4OkpLvOFHxGsDG+3I5DEP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVWOToNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVWOToNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B702DC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737735353;
	bh=DjgAxoQHRbExnCiJKv/fhTxcQY92ggj/ESQzVaHTEbE=;
	h=To:Subject:From:Date:From;
	b=QVWOToNKBJF2I7bmsf1Wr8Stec9rpjt6vz2oYia0VO1Ov6xrM5+o9Kxs7eEAzcreA
	 /oh1NGZqe+wkON9oYJCwxYJk4BH0q1KVV/JHqAAT0+nbLOQVGlrI/izZiI4D3Z4ivr
	 ugeuZ1OXIndNwplm9+eLHJ8c7wAh0iZDJXhmwiDC8OL3/PNOp9YjIytLBiZehmPfsO
	 EXCpOxWwxs9GkYBoIgIN7afhx7EyTP50UQ5atZu0N61tTTVDzhuKrzONQ/7mqN26Zb
	 NQf2qux8+jmp5lLijdMvqWwDh/kOAddune//cJoYlft++UpA33vrUFn4UGoLElOD3n
	 IqbFEIBL78bDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4FEC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773535364.4673.213963854751802209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53407e891277113882d12d7042101bb677b4f9fefff673359c412a1a1197c45
Date: Fri, 24 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737735353
