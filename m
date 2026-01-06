Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD326F28A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767738834; cv=none; b=UBESvJ8Mw0dQJy+/LweiKD0ECkOzL7kOn4FX8j5jFiOJbIgjoARbxbt8ilG50Y8k2hb38io4s7StT6fM7GmJBuzVLJCELH7lKpRAQj4ULaMlDmvngTSCda1eWk9PFp7ApX51WTgdCx9BSmsL4CfEcW2Md2U9yukkL7KL2RY9qmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767738834; c=relaxed/simple;
	bh=BvcyQtv9eG1cG6eJFISfANBbUaS/kjPZYTgu+ye5doY=;
	h=To:Subject:From:Message-Id:Date; b=pp8Ov579bNeAny3KG/lvSKd2vY+OGNHjtgaKW0oI/2KzPe5w5RcoW7jHTuJvsq3mQjk5EXQyzzSorFvLrD9wygYNPh0bPCIuXeEhC1r4ZZDpIs/zsZg5n+SmwT+/q0eBy3ze2MgVE4/C9n6oVtAVc88Bsfgd6qztXkCEq59pwrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yf+T933h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yf+T933h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40AEC19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767738833;
	bh=BvcyQtv9eG1cG6eJFISfANBbUaS/kjPZYTgu+ye5doY=;
	h=To:Subject:From:Date:From;
	b=Yf+T933hzwWtaxOOzQXGVMh/YnM6dMACMhUygTWq/VpMC/4mkOIzSWiL4Y8kjpobt
	 jWQKBhsd9t3J3LY8g5ozcPpCniYlmJsrmoTE52hH/eMtd+Zs1Ef/s2j7QOxNkLtQ+p
	 +x5Ikgm4RFuVQxFRRpNyby0sI9vhT3NjKsRhcnbF/gw72CdjJl2JGWUQZ8uOCfUP3A
	 s7Q7xT5lCyXvmUymq4Ni009iWX+NWzxsMev29ByiAtZKNFHJaEd3H3ErckslFvEAER
	 syOqcfKpxiZgEHfwmPkHrvjNh5ny8ZyCKIpoOVfRiJCjXtBCejHX84bdy3TqHQPbeT
	 +vDdNhLFlJ3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A39CEFD18
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773883358.661.5550603419188861332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339600e1d8483a44f3a78bae3626b49e4e85e71847972b2e4ec72daeed596709
Date: Tue, 06 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767738833
