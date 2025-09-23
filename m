Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280DC3115BE
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758610794; cv=none; b=O7YKwIq53z3uG5AorhErTRoAGABYrgaYzdOWfxcXVJ/bOoeShhJyXLYs9c+n0J8ZmgHZmQ2GE8XtoOoHKNj+L1Pd6zA8z4tHKuJN3ukNx6ALv2WibPJ4PaYF84whibkPfl58ZU4GVWMycGN0BT1VuO03Xu2ceqAmhF+CoKqT13E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758610794; c=relaxed/simple;
	bh=PV5dFwYkIiCeQo+Lczw4QYNGXakZeReE5RVSK7azX1E=;
	h=To:Subject:From:Message-Id:Date; b=M22VUCw6YJn02VgBMqP6MyF5QzjFEoYZBef+bEU/ZvlxPwWEhHqbJ/K6tvVFDQoYsNLGSCBLY8nP0toPSl0OEM8C4UlSKrL4i6afWFWizZLKkNDBonbaDznWrnVglrZ9SaynBTEe/B52493uy0EY0mUfL4YvZJ/KFwNzMH89iDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh6OBtKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh6OBtKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5165C116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758610793;
	bh=PV5dFwYkIiCeQo+Lczw4QYNGXakZeReE5RVSK7azX1E=;
	h=To:Subject:From:Date:From;
	b=Xh6OBtKu6F9nsgvaH22jueLBtkqGUQP5qH/aTTHqbjZOkAStMxOxdOl9YskpKAFJo
	 9XCVjBnigI4NhIWgjLskRsih/iEFLQll44tQ0vr5w/vMjmpB0GqGfc2nfvBLPi2fYM
	 DQYD1zlcZuPS8ic9zjKRwLfsuXmcGg8/hHmsIJFPfQP+NzIwNYiZEseoQoy4PdQFZq
	 2TCkmQAjR8ODhe5kuASeCm7rhO2KVXABbdMbtuWNpg5KM5gBAFe18jcLFcaR8qnNyg
	 ew+eyRL+jk7TxtfYMI8xE3hq4jXVfxWIJPucQSEn9qC8OE3ctkjyrEAZy0iNK6eE9d
	 YivnX5QZ3A0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F0CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861079358.17956.2026809405520900272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95076f89e40a70f0fd778532743f8349094677950d7540cfcfdc11ea8861a733
Date: Tue, 23 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758610793
