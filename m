Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637274DA08
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719518063; cv=none; b=XV4kJBb7wOOAIcnfS1OS+WOZ7c55117TpiSDXVt/7uKLDpOU3lXtYEzrD/l6ylp7y5UZbv3Qv3F992RDLdOuuaCl2wM0OpMne9VAfcme9Zcs2hVvdAMl6Z+h/BRZ5jr+vyHS4Oj7TtyUDlB3Yi6p54qTd0BJWkzi6Lr6sKcdSjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719518063; c=relaxed/simple;
	bh=GXvAdh1SSTshfLhxxMRQ8/Gb7342+Z6tYwSn5nGM97c=;
	h=To:Subject:From:Message-Id:Date; b=k3K5eIrwsk9sgh0GgmuOquqm11T1lUaIRQ4Ve41iEqq6j97TrOwflfqkG5FCFILttutJgcZjAxYm9gSNhXn+b2nXsrbnbZyEOl4dmzwqcPxmF8SY2DqQXuOhC7Tf/C6IrB2YMEFSvyTkbpXPQ9gU/8fpGUYKvvEWd6LqQKJZqXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtCuWdCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtCuWdCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E547FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719518062;
	bh=GXvAdh1SSTshfLhxxMRQ8/Gb7342+Z6tYwSn5nGM97c=;
	h=To:Subject:From:Date:From;
	b=jtCuWdCb6e5LTx7bqA6PFjBLTs8Kzf74Ztbsjd9v/V7aeXCoJSLJyOYsMjiJGbKHG
	 Qoqkf+YhHz7WT84Ay9JDp99EEGA+T/MeuYoVFRy8kt7aag6KNSr22mCyr8J+y8VZdP
	 bz+2mlurUxvbmRciHy0KBpe7JasETasLyqb0sQPttvXbPsKRX7NyVrSl2XbEK5jS5s
	 J7x3hWewqoDdjDA0H2ejskOT3RfVPSqEBz0iF94hpuAXi2b6F+eRuMqYnqqGEMlS8G
	 /dv1SpNDZofPSDgKXBs0j59dlmPBBWxcnzdeHEL0DOZYtYHdVs+skQyWmKebL2ySkk
	 4Ejq1jGpL3fUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE424C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951806283.1937.17151727758996093529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb0b16e78e284d08599403b0cb381360061f5add2d8e106eb468602839da665
Date: Thu, 27 Jun 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719518062
