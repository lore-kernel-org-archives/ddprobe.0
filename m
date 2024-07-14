Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7164C61
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720919423; cv=none; b=RF50IXBmrognvfVwH5IHhzpNK4k+SaMGh92cUEL/oTe+Qk6/cb+i/YKxE7xT1xfLAzpUimZKWvGU5Cm+e3A39RD28y51TOhsoNBVjNdhLOwd6nHN00XnRJp9lKeyMiX4pmbccsoQJkSx9IIfz5HFjHr4iKP8dYlmuUHn/EDgeCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720919423; c=relaxed/simple;
	bh=18om8P9h6xz+mXkpT673EawRofHfo7rIMvViEdLu9tY=;
	h=To:Subject:From:Message-Id:Date; b=hCP6r6DyWSYLAvmrBClNybuZb6wmgKwfTUgEUjV9RkbROndqt+9Ql1SbzLP35VzdknPectHnOVTNSjFcASY80Ake/o9S8pdMnLlm4AbahJhhVY/1l8kRMWdJYlaTfuBoTf98jnCe3EolAUw5OmIDjvNVlzMp7ca6WaSt8n0j8I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyGgoFLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyGgoFLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1750C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720919422;
	bh=18om8P9h6xz+mXkpT673EawRofHfo7rIMvViEdLu9tY=;
	h=To:Subject:From:Date:From;
	b=FyGgoFLx8pY7lv4L4bFyJMlHx+d/IREX82pVgbhgK6ZnwPS2zMcT8wUZcnKn/yAob
	 v7L2/PGATFfwuClM0n3WAkpNs2AKaDeEaAWzjzJAKGF4+jZeT7iE21Kur61CQoM8+k
	 yECCiEhXnt1sqCDqeAUECWMTpoe3gQFJQeUzl3G2P0ADim5kQe87+xv8MBKdYYadnD
	 cN/3h2zBMKLIwpKAXJlbxPR9q64CJk76O2qz3epJeKdipoW5vhYDyIaLxFx1fNPvNj
	 lfNx9w6zK5JKx9n6ITjZgBHtmC7rlVZFieAZ4RIkqGX2V0+BO34tns+wFE13g98uzC
	 q3yZZgUKlMr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7F8C3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091942276.10146.16726954269361346035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47a186603dab43c1b88500cd03d903e317d3a4f5d638d228d15bfdf39448f1b
Date: Sun, 14 Jul 2024 01:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720919422
