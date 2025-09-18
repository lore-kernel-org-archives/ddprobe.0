Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3036E2749EA
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758217794; cv=none; b=ub6fMCD5dcbM5ep+vMHzD+9FbgvKnYSoNe7WYSXFHkHCAaQgVAXoGeBgcessN3KIHkF2CmUt4QdAd1OLNkCLtFZTyEecKfdsaFPfv00b4dyM9/jIG2jog4Fz9llONUWR9LZPrCLUvi9SfBPabDVIn/ICrDpjkEZOY2887DawXwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758217794; c=relaxed/simple;
	bh=e1+Jjf5Vn39to7f429WZWRGingerKiqn/LU0WPqu/fg=;
	h=To:Subject:From:Message-Id:Date; b=fqn/2vWcx9pfcU7oklapHXdasT6DKKVe1pSxo3U31Lz/QP0HyseVhkJIBLumVRDUxSU3kIltfA0oNlch0uD5TsfNIahso5l1hl1xIV/kdzbLveT4J907UNpDDsr/uapFi58vhRbSyWABcQ7fqickIWjM00ZBJxRg014qDfssoG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI9el4ZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI9el4ZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758217793;
	bh=e1+Jjf5Vn39to7f429WZWRGingerKiqn/LU0WPqu/fg=;
	h=To:Subject:From:Date:From;
	b=OI9el4ZNjN1HhvXRzIEIH0Org8ZqdQONr0VJtk0qLscfM+NiYaDz7/m/MeJmc3ZDZ
	 LIh56YlF1eGnf8OT6SBQloRRos9QtupA1Ag3RvQJFXW54IswSk9zVO1yvQ0g2Yg3sh
	 gqYqaBu/Yo8B8EkZMtzzZJooQfa2gHSNff0ZRNAdjZ/Av95ovqWAywZJoS/UURsBPu
	 NynYR06ypwmpUk6c3lwCo/YnEi+p+jH5GmQQVLpZx6nAgL8N6IiPZKE7AyQaEf1VHN
	 APJxOuWdgEiyu3nXW272KUxf4xNBldL35tYY+cSRlmUoVu+aqv8owd0I9rvUUu0BU8
	 g8NlG41ttIKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90161CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821779358.6167.12670445240368196180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f2debbd57fcb8b492b440ce568ff02129e43f329256485728deace174dacf6
Date: Thu, 18 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758217793
