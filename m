Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF6D1EEE0
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712504897; cv=none; b=OgEHfI6j0LfapKVHicHHPhxLDJ0ndeVU3unj4VesFofPYzUexwy4mTVaTKKwZsz2jT+uQoN/Br2jM15odA9S8rDoSjDwp5wq8R5btIVYko/AzsDyDq36aIuvkqvyxv/tDcT6E40WBSWU4fm1Urgs5wh5XYiKNjtJd9TupfZuhZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712504897; c=relaxed/simple;
	bh=HiTs4AVJdpQ4Z15HCE3au0X1y/j9+XQRFnd8hcunM3E=;
	h=To:Subject:From:Message-Id:Date; b=WMyQb0MhOL7LRX+cjiby3kC8CiFf8kukWi51vDT+LGoTatYnKW+RMVgWXk4kN08h2RBxXtHhBAd8vrR4z9tq7vyrCg1o/8uK2cWIisCKSHCedwWwScZS0tR4tLzwcR0siqBYJCp/TQLcnr3ENnXqnXhm+XlI4T2+jRRhL5zxSpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjHPKjBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjHPKjBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BEF3C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712504896;
	bh=HiTs4AVJdpQ4Z15HCE3au0X1y/j9+XQRFnd8hcunM3E=;
	h=To:Subject:From:Date:From;
	b=MjHPKjBMSYEfx1bPxy1ODvA/9JkLUbCJWJKN8hbEka/auheuJtbCxYZeHDiTEquhb
	 /2gLih3HerhGXeEjgqdXLgJNpmg7KdVquVqCoN4dsZZ3ZdlUx70unfKHjublzWC9rc
	 cf9xLz8fMcVW9dQXu5Xvs8DEfRrySgJTpEkpCvC8RnLmZq7BQMghXka59eBXq7R+4k
	 j8r5BW9SafBjIX4qSLAwEyRXaPJuF/h35qCxhS0QVaLqtGcm4OMz007iJEseJLsOva
	 yMl5W5fAf9e0eraJqU+oO9HxGFnM24u59o5UG5BXykrf4D3hkAzm/LW7NZt9cMek+Y
	 JoWdz9WOxVnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E77CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171250489642.32666.8980497378394539790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed38b7d8595674e31d4a8b3b8411ca192dd90ca634c80c8faa4b83e3f804ae28
Date: Sun, 07 Apr 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712504896
