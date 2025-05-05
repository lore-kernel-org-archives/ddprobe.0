Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3341A1F8EF6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746438594; cv=none; b=ceDfbQe1ApqTZSHmRerP67Otkmrksa+ZJ+KDyP46vTepVjSWh2BUnQ/vR1ANE4sjoWl4iB1/l32w3wEDS1iHCzK5kFiyOc0I2gnTSwWuOIYgF+s4BB9eX/7+iRVDmDQ02RWWr4HTu5deCH86xqS2lumMDMhFzwSXtkmfBljzMAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746438594; c=relaxed/simple;
	bh=kbwRYdf1AaTAldeAnUx76AFzyGjSMRF0TRJA+WFAk1I=;
	h=To:Subject:From:Message-Id:Date; b=R5G6KOSeFlIFGOK/US6p0i0AItROGcIIFLy1EyjH8ifdr1RgBMqUH4RAdCAbxHJb/FYseyCssC/iUTLDvxwZeGCbjUxC2fZ3aJ9cr2AuWFq0rLDM0CtQVSnI8ggruIIFfdZOYKK+9zNH2cXsz2rT0LfeE4RQFVhLJSlMklWl9Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCwQGIqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCwQGIqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2052C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746438593;
	bh=kbwRYdf1AaTAldeAnUx76AFzyGjSMRF0TRJA+WFAk1I=;
	h=To:Subject:From:Date:From;
	b=WCwQGIqXaX494k/0xP0x5kOxW40Chw6EzlV8l0P6J36rDXu09UB99/P004Am0tCjy
	 6RwP4wHfbpwR7HRcQeEoOWd80m4kRbLB/UxB+siJ9xgjuzyiW4sMAjVcgDStAg8N8X
	 Z/rWFzh+xWu5uaXVLunV3u7q7/cjG2qk4nk5Drg+cCC17Sqch7Y1cBSMzLUWhTM/ai
	 MUPgTYVLj3l8185L/5HUziLovE/HWhI2oiU/BrZpMkR492FOqG8OyVXlAQ8aQxns/A
	 YjfXEkNF2VHCBbNuRDVzb/nQ4fOEmcN+2iY4Qzs7bl7XDlfXUKzTCCGRo0hgocEMo6
	 HDh2/YrpOSkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F6CC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643859358.14956.17137158153059559743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3eefe53acc5fda0849dc68a8e3103b93a0e90906d68cb7351562320721ac04
Date: Mon, 05 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746438593
