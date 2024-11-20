Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A8D28EC
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732074954; cv=none; b=IPlCskbvB7YiCj5x5o7hDwJMJB0NhjbENC8Z1syp6GxRzUFiDpHmqoDp3+Rr7XSiD0NNBt+cTlnbqUAVy6BDmJJtTpa0RaEGB4m+hRyEn9CeEFgkU0L+voX7TL9i/954c7Iu4ML0/3kd8KA9A08WqB8zE2fmfJbKawRzTtRQ4Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732074954; c=relaxed/simple;
	bh=8bIXczGiYbpifsL67Rik1tp051X4woEeZ+1pHxFcZ+s=;
	h=To:Subject:From:Message-Id:Date; b=V27/b8vI40yiFrb3Hs8jsnzKIneQ2vUYXWLht9c13kCPnCal6/+VOTSaNIvi+WyF/gjOeHWrhtRNUPdAygBL8o9eP7xAm/ttjM9eQ6OqS6PYvHqYydxXqzv6/2iDwTAVq/vVri3/7/PaASeF9nKWo2wJDXaZzvveAUrtYvT5Z84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yju13WVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yju13WVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B17C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732074953;
	bh=8bIXczGiYbpifsL67Rik1tp051X4woEeZ+1pHxFcZ+s=;
	h=To:Subject:From:Date:From;
	b=Yju13WVqP6mKR50AtRHsfr7KRq28lFZiDG5Ay1kmU9nlRVOr2huv9S4IZNgrC9a6E
	 EVuJVFa/124TUWttdEe6bjZZ3TKwCyhCuZfUcw05E1E42C5z2iiviAYkv90rhctVep
	 x54vPimO2e1Cg8egb0GnifWscLlhc33sRRnzfShVlxsg/31cTZFV/TnPYw6mXHwZLO
	 cRNzxjvBNPJ4QWGTvd2ATW0QzcUwF3C5EeYsz4S/PYCdPRJjzdxIGqGHlaQTZIfXim
	 XGXD7eDzVytPXlWc5birdJnmi1wCOCZs3S7kuG1XShV5MWHtcVHAyWCkPT26ClNXg8
	 vtV7TDYZF/cAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BB5D6E2A6
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207495363.6200.15460519100890225491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: decbe51ad0f29457f761c9cf8ec2631cc8fdf8f363580988402a99fca4938f47
Date: Wed, 20 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732074953
