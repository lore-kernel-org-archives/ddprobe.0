Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210B7F9C3
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707273497; cv=none; b=p40BTkPSb5ZSMaPau32mgkJqglbPQTyALkAbT8CMzRNsg0oOo5GjCicBupAgQVSpg2Jl8PBfY3/Ji1u/muknSZ2tLg6zcz/PZErxhLxgQ17G//DlQLJ5cWLbquge6H/LfhfLCUp3YfCd06YJMsNnzmQOa6etpTsQospo0Q10G/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707273497; c=relaxed/simple;
	bh=NVAGTVUgknrA3gackm6n3iZIhGOGKqiwi/Y+/3Xxm2M=;
	h=To:Subject:From:Message-Id:Date; b=HE/fRBFLuWHXU/8PNxxuTB1YrYY7tNcbOQaJ2Hb2dZy738tgYW5mjk1lx/nn6YBW3YuJZmBEalHDgJsqkW6SNL08SS/CeEtd9jvqfIAX2MlQ2rQ6GiK4PGBReRrhg3cqJqhtIL2tJJfsww+tKFCoEnR31DKUu3A5PqvdmCeZIcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDsWCuQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDsWCuQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99F66C433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707273496;
	bh=NVAGTVUgknrA3gackm6n3iZIhGOGKqiwi/Y+/3Xxm2M=;
	h=To:Subject:From:Date:From;
	b=GDsWCuQsQYB9ha0Hn5lGk0rKvwproS1fyxB29g3L+3yHSjdd0nzpPz9H/T3MtH9a+
	 iYQb3YCnyh4ob8bHCOVtH3DYS1vtB5gFVKLDSaTBOl9CdAZouuziXqjg1O0LvIEjgZ
	 KuiUkQ/uFKUiHXVEwJCJfv9AAc7ciyq4D4R6rJ69ivGyNjqAGu7WA/yWxnNas3o5Ym
	 cMXrcirmuIlMTgoNJB0VpIatIdYx3cy2XpjYo+2MdplPjAiq4/EJzYKZsTeou03r9b
	 CP1JDNAfurcsRddF4OM4yXelZTzjgtOmcjh0zeTiiloMuIUr3fkPe0QkT2Iy2L76IA
	 X0ZtyExbU6ppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79874C48297
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170727349647.10103.11517616397352721196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3043d76c998748f08ebe47f257ce31f424b1667ca841c783b43ae6fd000840
Date: Wed, 07 Feb 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707273496
