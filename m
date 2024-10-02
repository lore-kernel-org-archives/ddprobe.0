Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDCF8286A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727910354; cv=none; b=eZMawm2zvuS42VLskBMtdFxkrV81wzOrx9qb/IgURnA7atXxU1zgJXuf0YamBv4dsqALDVlNX3PCc4cSh/WcAKOrLTM4JnBSAxPllThZokTttLbENVnnDuWNAKkMDhqA+J24lMB99oWHthsw5OMGub+5ry3RHXosEAu3Y8aa6fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727910354; c=relaxed/simple;
	bh=XVGVkpTm2AAadIoQIxWMltF7gvw+PHWdBUM11Nv2G1A=;
	h=To:Subject:From:Message-Id:Date; b=d7REWRLLS3IqKNonbUJr522Cr2mwYM+xZEQIwkPscrynJdUsmqAP0Z2/fQDHcxjtAeNwpG141hGq3OlokK4oYdEm+5Hx5diEyj9/4xSPXkiCJIXX9RKzZ3lE2IAznhOXHvqxcstvWsOXwBdlPgIsaUL50whhbtzObB68wVmTFEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMEoQ+S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMEoQ+S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0762CC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727910354;
	bh=XVGVkpTm2AAadIoQIxWMltF7gvw+PHWdBUM11Nv2G1A=;
	h=To:Subject:From:Date:From;
	b=nMEoQ+S/kS0cfjT8H3LKwDj5Zmh5tAWrnowNbp6qht5Rl/bSLaLGRD4yj5+BKqJpq
	 UTw9rrlKXIRZXoQkWawgvWdOEqnY9j0rtvwO2dvBQjBLgGPHta6EANYYM1QutXxi+4
	 1V+XPW6r3Re5YNt3wBCEJKpUpMYdpkUbjOKxArNpivQBsG7iqJrxzM39syIInX2qJ4
	 RzjPC+/5/t5LVUro0YZIX04vciomcv0qJDd5+59rfrtOzHUaReUqLN3AB5XinM/1wa
	 VbWNNXEJAVlGrTyQJpDEEq451cB9AkF2v9Ju0yBZbGnVVnhqdGTAm+436Ivn82mKZd
	 sNWpv30iAk7DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4BE9CF8547
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791035387.9341.14402527739451922579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539c6341a78d03e717c6ac8dc3cd7a3342939bdf32e52420c4daf327685045c6
Date: Wed, 02 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727910353
