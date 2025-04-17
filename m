Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA3139851
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744892394; cv=none; b=QMbPM6+c8ZuTfMDPKRZQxGn1athwYkAh43/bZ+GnYZCxOhiq8nlKJM3LgizjdSKIRR42y9/OKRqpqePkRAnYSumqcR2+sC8kLY7RKPw0JQxXuKLzCKB8oS50A+9+Qb4wwupy+fAHKRtXyQ3xtw/qP3uHgDsSwSa84iVnOw7kgug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744892394; c=relaxed/simple;
	bh=EwBHSVSXKuxLl5j+eJfDrdLmlot7dvCmu5egBsZdEUw=;
	h=To:Subject:From:Message-Id:Date; b=kODk9Y+ukjG1X04bpwNNtbflpcE5MXh/POv9Mx8CeXaVh4KxU+5jSd4UgqN4ke+HYQ9j9HcL9xTsZSf3E8dDP4jBFJRL/msRpVFMWSDIF/SwTqSMfDj//IbqkFK0TC2usFx5OY7dwCJKRf7S154H9Yx/cynNtV5XHfRZZYthZnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGRVstTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGRVstTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6E3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744892393;
	bh=EwBHSVSXKuxLl5j+eJfDrdLmlot7dvCmu5egBsZdEUw=;
	h=To:Subject:From:Date:From;
	b=iGRVstTKgVv+zHcVN4j9VPt5oa6icAXwWZvqBx82HLlW7vXzcGc0c2yBBVlu0nCf1
	 81q/8M0hUwwgxnemRdDldDHdkNv0OlJbWcZUcZLZSFq54C1Ay37GDaGjD5TOe2LXnJ
	 7SAAQPOVQfPfUnwztpXP7pMp5xshpMTh26/4ErJQUaaLphQtVPqo2pMeoJcGjNxxqI
	 1VtsGlbkXZUxZrnLpcJOwMUhiRAeSQhFHeGpvRgvOG6kYLjGE0ura+pkrlwfGbySlw
	 gm/N5ZxF0alsYvjFh9IwBnwikp4yCAULb5N6Bb55a/9xGUArtOglwyZvWRFdsp6Dqo
	 rjZ2NLoMwfsyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BE9C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489239366.11157.17977525406145442474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e322a9dc10e01a3f1d504f5885f17a9e62886a0c18dfdb7d5aaa0c9e79725f22
Date: Thu, 17 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744892393
