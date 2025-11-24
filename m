Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A6211CA0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763942514; cv=none; b=pRl48zr5VH98LRstEcHPVGMi0RBq1W19E1p+JSnLTzgL8tft0Ks11wF3loOyq9Z+BWsoFeG6oZ+FaFE1VX5Bgft2xjWR4WBTNdvYXXXObwI5ILdRbYA+rftQbnQDqcru3Nkb/PfiarAD13Mi2aNKjGczba2twHEuQoDQGgKPYJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763942514; c=relaxed/simple;
	bh=MqGbC1hmv+qTTh/4DoCcGL4Nv2+K4IMXLRj1JsKtUiI=;
	h=To:Subject:From:Message-Id:Date; b=TnAFuZIRSkHZyX2sGbHV3cIZuXx9S4DyFT8gPktH4FzYTNlO45hqkAQh39vk59kYym0/zNFCccowVFQ3r8wMUI6wu00g1kGNApaipaaLUpbglHN3RKXFani0I/6EkuQxpRyfqWOTK1PygZ4kSNjXVMWxx71uZaAbcottjMqkZ2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ka7pG0UR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ka7pG0UR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E5BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763942513;
	bh=MqGbC1hmv+qTTh/4DoCcGL4Nv2+K4IMXLRj1JsKtUiI=;
	h=To:Subject:From:Date:From;
	b=ka7pG0URKXn6xlFMrSxXmwIc6HepwSyP+mSJO2gFPm9qMK/m0jDIfZYy1V3l3ZfBz
	 4U2YRjyj4mL1f4wCcZ0/xIqzhHpFkq/UCnJljsCdePYwhED9xcoG7E/OHXCYZA891G
	 7Cf3mhTpVqY4/PvvG1dImx7nGcvW/vvju1TaG2sL9uHSyxoyOu7DKvK3WdvUA9XzXk
	 eLi/VhSryYcIzUfqEPRJfimH5vjyVUcx0Wrzq+lwQFbKjUJk9baiaOe2au7za3hejH
	 1Nc6eX2R0YbTJbZa8OUG06N0o3Fe0TRUKU3TwjUYlZmYFKs00fB1l4CAX47pSMcvrC
	 TxuXk78I7V76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02A2CFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394251361.15264.10399314773639711430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c824b82723b5e876e5a68a3b156b22445a66510508e0ba870514f764be702a1f
Date: Mon, 24 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763942513
