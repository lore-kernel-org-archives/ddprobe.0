Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB822C0323
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774053894; cv=none; b=VMUeFf+Fq172dSIb2HCoYcGF3qnDXw+H+j1gUxPLEINrb0G6rQYvUuexxmYBkApNg/DqnLiiSlC/e8MFq0t6ZuOAmPUBT+2gAQMP+HbQJVKDFdBIAr+KNq7OpdByoEspDFdgRWrBOY0arOI91yCvgj2JhmGLGys8L9f3SW0/9YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774053894; c=relaxed/simple;
	bh=fnrgGPg3VKjSQbtjWJoo+S2GZPHJxw+e7se7aVp5He4=;
	h=To:Subject:From:Message-Id:Date; b=ejZ9upL2wXL2pv4LQux/RZR4HTDk0zWIut46oCZ43FJvZ7hN7iaAqAAy4hoe98UyMgzwVa+lZRN3FzYm3PU3Ip4l5obnewFtT7dGEfSwUkMZBRj6qDuhkt2Q5cZS052gTHOB7HZ8rWiAvA0fOSKLrCoZe7D5wdrAvPQLjK670pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjwfM9wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjwfM9wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A4FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774053893;
	bh=fnrgGPg3VKjSQbtjWJoo+S2GZPHJxw+e7se7aVp5He4=;
	h=To:Subject:From:Date:From;
	b=pjwfM9wX1RG30NINUNqs7RlJDLKUxRJZZ+InV8jPB1bsS0ilC56txMiYjTn0LkEAw
	 FHraj/P4lkDQP7dOqOHah7mFUPWLtlLIwRS8sx5hkEryKwV4gZSij+HjOhw7NJWv/p
	 u9fR9O/gDZRmVNi7o4x9Eb+onqGuY+zLch+oWPb3MvygmD99LvmEkIfilniX8CWqWE
	 RcFKpLwlz+UcgOWPLDmw6ORao/mOYw63/UbFiBJmBN1stfjC5x7zn7TLNgXG5FMtxY
	 JtivImBhkxNbtSJinmcmSjoFXNtG1qxQSjYhrtO5Am6Bls6EjQeZ4vjXxYUEP6g9/C
	 AwbzXUtrzVs9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA721099B4C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405389357.15098.16848832200481927537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4e6471921018cad988c69e5278cb735e085006ec71fb3a7df605dfde8f99ea
Date: Sat, 21 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774053893
