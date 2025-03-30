Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B7E1DE2A7
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743356994; cv=none; b=Y/N4xjrV39q9bb2SniWxgsjpeg4O8rdFslDpw5pEWJ9HZih9GWSWMCtJwfAQpi9k4lIsSRGOKB8iCGhbSZfEIxnhDUJ3IubnrI19zKbrBmJ1GDIDgLdv82FeofRNtnfoCAQND/+y6GpPyMA6UOBLIoytG6h8qAd7uDbDfl4DsfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743356994; c=relaxed/simple;
	bh=lZfuHMMd3jWnMYnEI0Chja72S3SFdm1jA/kFjOXqnTU=;
	h=To:Subject:From:Message-Id:Date; b=j/b2H5LRzb29TLuMqz3yAjM0l3yWgOsc+RBhbcCzyz4DUbEJ6do7tF+YvZyUc1+Mrhxj3AnPbrl0v5cesjqxiplAaOn4R4+YHcb580NocvElkBEXWfXIzzPvK7Gof9Bhkfg6AD6UlrVORMSXfwbpmOxN8hYPgoT1ii+kEuwC0CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRi8UMWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRi8UMWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEF4C4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743356993;
	bh=lZfuHMMd3jWnMYnEI0Chja72S3SFdm1jA/kFjOXqnTU=;
	h=To:Subject:From:Date:From;
	b=NRi8UMWdUOniHQkP6XH4bn9HnOVR+kddx7GoYyd1XDUkO6ZTaiGeQC7VhV7ZsQ1xr
	 bEY35KHcKOwnxqqYoi87/VmXJfOC882iGPIr00yCCBsB5fZOFfplvAL/zJNlj14o/b
	 KQ5CcHB486dRO0VqvLMlrSCKFA2+NzKKH7nn1U8cXc2wQ9tG2a4WkAntMgSJSCcn+n
	 fBdzjV6Y7livUUPyjeFo0sp/B2gSEK5+Gxhzpt0819WTFoz+6B0RcsGR7H/KW7AjlF
	 ljunlNW5PPIqJ/cKxpeIBShRo419n5VB8OvRX51D4Ez/ZjPJGTpWl5kfFFk5mZB/4Z
	 PPicCduKtIAmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF5C36013
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335699360.19129.2519311246529379135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44212fd96a9bf045526fc12455361a3043b5bd3cc33cbb212f6472d443e596fb
Date: Sun, 30 Mar 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743356993
