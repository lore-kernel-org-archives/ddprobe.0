Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6C813777E
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763955714; cv=none; b=sj0LM+LTiihfhAFwA5h/8gWAYypG3OAxnK1ubQAb9heA4JLWlg9x8ZARRzzT9vyl4FVHw6ReSV0eC+01CeZzKYCBJg5f5xExSnD2b7SjN8fqzRSw+m6wnnWB+cuxWqzqfA59v2VsOXVShHEE3YOfV+AU3u9H3Sm0xJFpDUjnFMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763955714; c=relaxed/simple;
	bh=q3WPi+UVhgDWEeVhml3o7tJdyMsBiwAysyMqSqdiw0M=;
	h=To:Subject:From:Message-Id:Date; b=HVSdtaLdcX8OBuCykkRNd6xzz1CVVZ1dcgMMTOpjYG1WdypD8/9aa6mR+0KeSnqxdK6R+EL4uhKJJyGO8eaMe98fp58O4Dyqc6lPjzaEYuo+5cUshZ19MlJJLKtc4YS/BlXbE1Ekm3uGkBrXCAzNBcLkS21TTaUdAlzml9UfAkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6AH+kzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6AH+kzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3027C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763955713;
	bh=q3WPi+UVhgDWEeVhml3o7tJdyMsBiwAysyMqSqdiw0M=;
	h=To:Subject:From:Date:From;
	b=Z6AH+kzieIpBNReIbTZriFIPkc23gRG6T57o1DvtSyOmIvbSMgPhHm7u0KPDaAaQP
	 rJ+hVkpJqKNtOoU8n8DC3eRk1iezEulr3RT4IZ2aljG6AXzYjnTPaJEycCRC8k9ITh
	 FfuT3kqT9uXKG1pC29jBp8BsFvANL7Yym+8KtZICX5cXvqJKkuULEAKnBcsaMDmRA/
	 sZeRhQdIwOveT3NaAi3F6v9anUkMbT8D2O9km8FfkUls5MRvv75GdFAvNonWafe+j7
	 j3bbV0VcFwxX2maOu9KPvdkbQt6kJkuBhR8l/oS++zUJz3NS7TDCEwAy/5Tm23YyMZ
	 UDs3As4QfQLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91255CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395571358.1053.17981227770741956166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d269422f30244fa00a6a63de1e872492804ff45a51f833ca0351ea139081c00b
Date: Mon, 24 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763955713
