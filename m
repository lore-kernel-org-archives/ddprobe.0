Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C14207A20
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772757894; cv=none; b=fjrV4Bv5bA4M96f2aJUgH7bJWPQ//agjFGgngPcbxf511LTnO5ljPbU/ODfJtdSA5eJsT1Gs1Tvb0K5En/9pacZ8IKAbUSKHEB1nUge2mDW1KOGjUU/vKjYWt6rBmrXuxdL7gtQL1GRZZHxVFOsK0FHhmos651iAq7w/B+UBgno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772757894; c=relaxed/simple;
	bh=sMNa52z6L7YFqNtKgNE1qltrudimKEog9HR1mFysbJI=;
	h=To:Subject:From:Message-Id:Date; b=j8q5BiRS3lRHO6Z8NZl5HuOHIDSDAZmDW2ROu/GNIUJGm1zMY5bYhYhn0KL5mM9N8s1GuvHm9t4nXsH5+wnGYAFuElxpm5GDvGH0UoQlbXPoVq2n9wzxIJ1cLkxJD6wfgNr4RLsUmf7F33x+OEq3V1lX12zgCEqKtZtvNONUzEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O77idUSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O77idUSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E108C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772757893;
	bh=sMNa52z6L7YFqNtKgNE1qltrudimKEog9HR1mFysbJI=;
	h=To:Subject:From:Date:From;
	b=O77idUSE0qCrVSR9ZLJHVnlW1pVExBQhoDMOrhXJ/pS/Ufoqy4cIe0EgL2gYANbZ2
	 gFCvrEvBOdOpZpcs61Iq/n3Gt9TJo5AYAxGrWGBxU3wsAwcBm/jvT7OrD+B5pTn/YR
	 LgQSNHrBn6CB6aHBmLhp1jKQv3Jh3fklzEcjTaFEfBOWTJD6LLbpcuwLNPWiAlzzRX
	 KRFUtXaBZfW0kBOS1eB1IGkYtEHu0SzFHrJ6DPo/IFiuM3OxcAu3VYiAstSRRk1mg0
	 gaOyjo/9nGCujGT+ELI3BKeSzzjIitzuguYG8K4SH+P9I3fufMNh2/tTyE8P2K3QGD
	 1TkZ31IogvIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1EF513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275789358.2458.727485217078301735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e0d6b7595370707b91039b4a4b532cf936d5cc50992d6df50f4711e7dc3576
Date: Fri, 06 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772757893
