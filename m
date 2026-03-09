Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E445438B7AB
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773060294; cv=none; b=eueBmuF5cJcltnlJwTBuSDeguNjZ/+uA43Ht6znhtrQOsT34f1ejuqM0OBXKdX2v/ZC9L3kq3v8juBTP4cx5O1/9xuHHB1t34VA103vQSfs7byJgtxnDETsTYoZtSTehDUSUtlyN0jqw7q0qZ6XiCJk3zS6bb/A251Alu0HuHmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773060294; c=relaxed/simple;
	bh=y/j/jIsYPYr2SmnfTlQbVbcGj2hWBOo+YWRp7+ge1DU=;
	h=To:Subject:From:Message-Id:Date; b=IHxkU0g3y3/4q9CRDrwsWfQLRqQNe73VDqUhkOurkYkeMor0OaMYXWiRP4G4U8hEtQVFU+IoxF7jcGUZWTVC0vk0r8b4ala1YtatYLlFfvUg7h0Ojz9A58hBsRcwuixq1x/pf4rMmWklx9xRpuQqYoDACu0Ynq9RjlWEiWY7y8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qE+MdsRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qE+MdsRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F192C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773060293;
	bh=y/j/jIsYPYr2SmnfTlQbVbcGj2hWBOo+YWRp7+ge1DU=;
	h=To:Subject:From:Date:From;
	b=qE+MdsRdlO0531fK+gS/ob+8kIk3l+73ZWHcoEWjkPc8qc1gnm9+NpLhzFaGLUHUg
	 6CG3zGK+zkJDo0uetavO7aDzcj0Bm2E2Um4vUOujvDAaEU+hmlJQbmqxLLPiK9KJOH
	 zi+n5TSPSq5/DtGv0u9RELP5OgR81OMrBlmWzMXfYkOAYMaXs83UaM989FYuyysovA
	 D8iz53U3HhKSuFqG1Y1J6VTy93+GZGszRnRBRV3WOhe1gqb8Zn4+5abu/gWsNpu2+8
	 +Dt+LxTGvvoyqrMnYN1tt4HWb+HLsf9oqkO6K9ZuAoVMXd8pGORvhLk1njK+w9zxZ5
	 xH6iTeO/WxVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B5F3C241
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306029358.26345.4110800511167342613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3435a481ec5559cf3b57830006a3992ffc4fc0994c5cd961f12d101321bd59
Date: Mon, 09 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773060293
