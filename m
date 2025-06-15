Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D21C7E1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749967794; cv=none; b=HCisxmoZpSUvBMwlVcQ8JwS8XeIMz5wymTkxKuLetDL94fY7ZcPbbcLf2NPvYHaiWVI4SvQkQ9wHdqpgePdW/U2QpwlG28GUbRGF2BXNHjs+UNW2araBnOSDMPLPyIq5apNCBYLjvxpaS+2jWqKXu3/o/tOcxX1G9/599tzlOb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749967794; c=relaxed/simple;
	bh=7kgvF5GLGG9MXMmISLUFmrULviL+MmLI+EoC6JKAG8E=;
	h=To:Subject:From:Message-Id:Date; b=l9u6ptufE4dYbvv1WvkIPew8D7bnvfeWJ1je6xZUMjNthFAZGE9fWjTwin42e0mScXBm+qe2hEbng0DVHTp7cjWUFO7AJXI9AWlMEcRk+WMLB0gK+4h9NKPrkd/TKyycq71VFtXKvJAp42ZsLT0GYPORVg9Ucuwbl99Cr3QyuKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBereDjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBereDjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A803BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749967793;
	bh=7kgvF5GLGG9MXMmISLUFmrULviL+MmLI+EoC6JKAG8E=;
	h=To:Subject:From:Date:From;
	b=kBereDjxnR1zhFGEnoK7PLaAZeR7I9wY6HwPYgJZxvKgB2qYsq2ru5SS/BsUlSjQ/
	 uIEzXhpfatIg9IysxX3wLl483lTIuMD4H6gWfH3H396bfCWH5SMm4tux9pZ9EHkGJg
	 xnk8gb2AFTcRV294RIN5GZn39S9CvqwtopE70cBbSMYHNrG+SuldMYPXFWx0Ys7fQL
	 X8ZbXi1EMtdU6g0IgCB0N6Zx/3RZdzcXmvmdH7oOgbvQ9W1/r15yioGCibe8RhHtsw
	 GF84n9rkOzQwvQvYWguv9MZYX1DvvCnx+hl1KKGe1qiH1SdjAqzK01qhn+IidP0ln1
	 Mmw5B4+SFqe6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E5AC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996779357.26140.16321921623711242455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3646db0c9d5ae7ed59e4d70313ad34d342a2dd9044717b1dd36ff0b4ac6149ed
Date: Sun, 15 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749967793
