Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27850372EE4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782421654; cv=none; b=KCzXZgmefU69RqzdpYlKcLTFGGx0G3QgO/VYl+rOuDED7CYS+2pXZI0Li3mKnOlIdW5plNYazn+W5+4ZZ/jgEnWakrQizS+gY7+rutvAOTlnssqNfPOmqKeCj3BBRCM1PrW70/YiebyeIh9Tqqd1NfFHO1HBWBX1x1CWVBVjRX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782421654; c=relaxed/simple;
	bh=d4bapfQMwwxRRkC3XfHyEbKvZNJ0aMeUcp1/eznZAqE=;
	h=To:Subject:From:Message-Id:Date; b=NwXvvPMezUQf6g30WB/mDgO0sU4A34VKM405RCVzlLfMDrd3pFOARXeLAohJPNboUo8EgS7gx543TI3jSXn8umwg6Q/Znguto8YqZU9eLpoDoUYRw1Suu0mT7lrmXKOboNCrde2MlLt1E+OJCNrPGPh3wwp4f7JUccctxYPTMCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA1mFvcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA1mFvcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0687C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782421653;
	bh=d4bapfQMwwxRRkC3XfHyEbKvZNJ0aMeUcp1/eznZAqE=;
	h=To:Subject:From:Date:From;
	b=FA1mFvcjCaloJNf4P1xWTCgO2UAEsTNcaO8SBDdqV2DpVV0Rnwx/5vKgdqU7utuA1
	 5IL5lINTdAuHDuh1UZd0vxwr1Ttg3u2WwgWFgg5/2ZOaEaiH8r66potmZTITmQ2K7m
	 GEsk5cd7vYyruGnOtBHRA+ycuZUZCuPQNsZFpmUdy6sv6oP7lG6A6xlhzDO11j8HLy
	 QBBHtvBjsg+uMWC+kHnFtG7n+G+618oa7d+Ug1H9r2fFRDVgkHI6FtaQ/GEtrofo8Y
	 9rUk0sIgIlmPp7jPs9EYX1c3zesTLmWUnt34FG2ZjLSurzjtBw+6UEjsYI03gZ3Bpl
	 PmLAHZO1JyLsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A52CDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242165373.10424.4849297924504325544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd646b2d3cdde16fed8f9d99973267a879561e862cb7995c96893ed7fe900671
Date: Thu, 25 Jun 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782421653
