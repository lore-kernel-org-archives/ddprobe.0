Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D8E47F2DE
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778172454; cv=none; b=qyM/giKYziU24iOZsnJfKGr66XsH49xXDHrzDUgntYZm3Fh7U0uZO0u0V4RXSPvOVkdqftah6jZ6OvZiNTyjqIE+Nr8R56Vr+Rvg67TqIZmQf8huADbhFS4yWx8S/VHw8Lg3dhfBt1LMwwyPgNu7Dpr/vlS5DBZeUoo9U42gl/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778172454; c=relaxed/simple;
	bh=FlbiK2nmI+pKUy03eQ8UyS6c6OIYISf0wyeMkd4fkak=;
	h=To:Subject:From:Message-Id:Date; b=NS5WekV8gPzg7kVlSXA8oE4r8yOvvmQcjNgFhcqv+G14O03/XFolAXkF4HtUXRR2sSSY1b8XG3VFTmyHR05Jj/LzIoM2qnrt7EPw21SpHp9rvC9vcOwExSiTYyc9IlB/6ZrUZU8cbn4GZYgi4yWSr3MM0eGMnzFOX6kNLrj3qY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFI4FDZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFI4FDZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55FEC2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778172453;
	bh=FlbiK2nmI+pKUy03eQ8UyS6c6OIYISf0wyeMkd4fkak=;
	h=To:Subject:From:Date:From;
	b=RFI4FDZqdVJ2sXHWlzI1ZEZ7EScAu2aiM5+yggeBJ/BiRBmDpduvNYliDOYZOFvjt
	 F8sHcYFtnKfzQ0p/7gHMXSY1/DMjr8Y0qqujpkbbOmdonwf1UzSoT4WSGw5Vg7kmJt
	 MWOHVfYbHlblcNwu+1H9uuXERTB/8TLOVDPNLEiGmcWjJNSTjtMPa241tq0bATdrT6
	 0e5+uLdCcLSYC9Vb7Z8ZPu2WRLtib0jTEqJ8gaRNw3KEkZ10+ejXG/gkH7Q8KwkAjr
	 AlA44DCaKxwNl3lvyQROUu8Wxg9FMlGThxl0YUdYJ2E1idxnLGDukxXRVaF3XzVw0R
	 PhUCX7wZfd6/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A50CD3446
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817245372.6166.3442553984666136707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0713c3a1863c10a629e802462af804d29bef18de8694291e51b6cf09e3eef626
Date: Thu, 07 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778172453
