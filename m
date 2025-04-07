Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349B7253F06
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744053594; cv=none; b=S5uKPmF7GReeA3cr0xLl2ySe8XgtDH8tOGDqYp4+lTkkns4OOOiUFTkcR5Zl1A/sFsT05LW8Cdsnc776sHH5YsRVRy5sICP3FU5YKJEdvD3+kpp+ZB/3F0j5KQbi3PvgyVNqWMb3QxaRAGzLAjmtUZ0FgKymo4xMFJtbU+2rZpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744053594; c=relaxed/simple;
	bh=YHetlDXybBJB+UxRahnmebZ7VoJ0rVq/ypZxhd1uygE=;
	h=To:Subject:From:Message-Id:Date; b=NsLT64nDfNCaMEyL9chBcoRrtkVZYTE2iuOw8Sb6Yn7QZylWjnrrFc9WpMrhM8qD3GiMDOrbo3XQal6W06xxBQK0txKJkrvmpVnBFqaVWAzNJ6Xh/4EDp5QCrHULzUlAlZFgs4jEwX1z/3f3bpQe8ZiNLkfpS2zzXal8CdLXBs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvOdk76k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvOdk76k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4D6C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744053593;
	bh=YHetlDXybBJB+UxRahnmebZ7VoJ0rVq/ypZxhd1uygE=;
	h=To:Subject:From:Date:From;
	b=AvOdk76kLCeVvMW52BdgMeTJdLlVA3uZP+A4TSHOwYyHGgzS/HJdpT0Lrd4Tc7Nwu
	 f39jjYbEiH+2MgwVWIzvFMTM/yV6WQuPjRpVKsTMlqRTlPrxnHxBt809yHnWVG3Qoq
	 uSVFi0FBJYIdgfI/4CHZ5jdRE2QEeU7XqZ4LpDnoQsw9qmIPV83byr7YdaVJRJrLCF
	 9b8nKZFqV31ycuUySoJWNLaCCACnBHI0iztA4tcPjmW5IoMZ3+TwIvovSFkFgZzFck
	 uQPbyugLTRJdG7kJru1xvPBE81UVG2HKbEZMwz1rJBKc5TxCVB4q918rcsGR195+OH
	 AD8XD5ltrR40A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981BBC36018
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405359360.642.6252182263596533025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846be37d12cf240c77dead1b5c9cfcd3353b857409a2841ac3daedb1c1c666bf
Date: Mon, 07 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744053593
