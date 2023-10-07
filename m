Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD8D1845
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 17:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUtU5wQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F26C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696698428;
	bh=gPdRmnLYZfwHgQml1V8Sg7CfNUkU3/MCvr9C+w7nZ8M=;
	h=To:Subject:From:Date:From;
	b=JUtU5wQJQYAyL0fhsWmRSZ+VVKoAMEoGTmVm393ZoUO3izyVlhFaNwSvjRrW35phj
	 J3ofoW9Glgnr8TMaKPRJuIfxoAzT14O+uaKIT2WiFIaWy6JZUjX5+4hn7u+kShFqQf
	 1YTN+HvUCuETAo67AJl14DahdJBkE1v6G2KeOpJyoLaN4gacMbN7hrXGp2PywL0VBH
	 I16sHhEyTUaO83JGoi/jRkg6IpOc3pvuaODzrgzdW4tuk8/AyKet0goydNh234O9Ue
	 N8AGDMVB2oLTRdJXjnZANuTl+KeVJd7+1vyyTOj6KniVvj/6JOXyaniYy3oA22CFFb
	 c8v8WdD0Oh00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89CFE95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169669842873.23588.16634044846306492630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ade7c9669768b18ce01904d792be2ce06da53836b45bb2f7e52322b625ced1
Date: Sat, 07 Oct 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696698428
