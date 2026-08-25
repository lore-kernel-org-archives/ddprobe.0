Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27371485CFB
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787670035; cv=none; b=MIt6Gn/8go5LTHvZ4ZCqkf7BUOco9uB1hSQXjII4cNzjSmm5fuDBeejVGJEV7J8k+iJuVTwKYY5lzTV12iH+wQlh2jqyq4tVOjTcPTsk3kyn6X3AUxp3AMfes1ZnfuTK63Hj2O/8cDjebUrMXyQw0eq79UB9flINGikcNuiVq0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787670035; c=relaxed/simple;
	bh=Y8sGS8XhT/lR6igDJb84kf5J6HQrua7ucvHfGpUFpmw=;
	h=To:Subject:From:Message-Id:Date; b=Fr1kdyFsVD3fLJVSG7x5rr4faxOjvL3riFzVbsG+rM2eBgnAOVdW+t3lI/8s+K7smPoLVxndtZeTe1pWtNmuwDJhrvJezzvWA+5xlskwwqVN7WbBAyctTY5oZY3duMBa2yVdrgaYYq3wmFFrYjk8Lil63fAV/nWwVtv8W2kdaDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9+mq65G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9+mq65G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16F6C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787670033;
	bh=Y8sGS8XhT/lR6igDJb84kf5J6HQrua7ucvHfGpUFpmw=;
	h=To:Subject:From:Date:From;
	b=D9+mq65G6HXzI9qNodorpJ3TM5OOv7tI/0xm1q6hU1aH87JQbLI6O9XlMDTaG+eZW
	 MUHh1e63ob5rHUSkmgL6jIG62H2Xwx+qBRYS1Wn35yJrkbbQi0Ll12pBaNajFedgM5
	 Uvl2Z2qXGcveyO54NzL8iFje0OZcHjuYtlGk5daqLWh8jKP4+SrR7pdtpm2VKH1z0J
	 uoOdcXb/xqGZFUOgkbsppwL7D2pnzq7s1jUnZ6+XN18eoXYuzsHkHN1dlhIujBJEav
	 xQKZf5253dySfWbGkBK6ikG3V78HxyLSq8TC3TDr3almDtrGnnwwp1Q1bGDTWvFdV4
	 C8PZqC0Bsr+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA9CC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767003369.25532.18007571992740130083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8f4aea0f744cc7c1cec0f686284fbb10c0030d7ab5fc95d4dfe1cb821405f4
Date: Tue, 25 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787670033
