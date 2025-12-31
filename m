Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C3C274B39
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767225233; cv=none; b=jPQuoeVzaZBz01KAHqzqKllz6VtDwDiUzt5xc6E6CkhwM9LLH5VnXdjGAN+NMR9C18M5OxzppfCto3srhBau4R9Bo/kTKSskxqYcM4gUAnLEBMDJdIE1oIAR3pmrqUYfP8lr7E2xog3yX56EHFZyhHq8QNuOeeP0tds9t6/OzsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767225233; c=relaxed/simple;
	bh=iZl9k9TV6YEszhmMtORBlcRPONzHNJfx+7l8RTWYquk=;
	h=To:Subject:From:Message-Id:Date; b=dOB9YFCpjBDzbu3HsIDKSHDRBC9zhduALQWe1F9OjeCQlsX3jOyaJIgV+Xkblsi7InuCe6/SgPg8BALmC++qffuoUmaXG6jLH4OE0q/LKht+R0NShmM/cFPFe8EenDu9yLy8PJYWozfK6pZn+lt0e5To4mYo+wLUrzlWlhGcAdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4Pup+B+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4Pup+B+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BDC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767225233;
	bh=iZl9k9TV6YEszhmMtORBlcRPONzHNJfx+7l8RTWYquk=;
	h=To:Subject:From:Date:From;
	b=F4Pup+B+4giMeZuH1NaPGnJ8IbiYdNdBKMb+YARnRucUvWiK7kl0/3Nx9uUzV5F6Z
	 s+xjZXuRJ/DMUzj8+E83E7HpdlNQIdtbHW+bV/PcqB+f3UMG2tzS8Ryu0e44o5O8o3
	 w+v9XFqXE3H3RaoNd4uVczEd47a7aBEpED9iltKBqw4/n0d9POWM3QUNujntxFIt90
	 aDk7beKhy0aPVvYfC4rDrGV25KsB/6Nlikfb1UBfdCD77MwD8rQBCRL0zszCywSyZU
	 K7C1C/72yWX9Affycb1Dcoa2uxa0JpKM0fPbDUQEKHJVlZG2bjIMy4uWGMArhITyWA
	 csQ2pxBHxzlwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95648EE644A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722523357.5462.17658923420237248667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e8eca33759d140842ef3c1e14e3fd2b8641e7935b6836770503892729c208b
Date: Wed, 31 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767225233
