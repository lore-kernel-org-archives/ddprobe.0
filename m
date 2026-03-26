Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1435C3C13ED
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774520694; cv=none; b=Lebmm6hp+dFlwxfO+1ankUyBJJc1bepQvrWCFam+qM42feSqdXUS5D8ha9hRbrM3rP27TUJiA5QZlCuQ7+UYfD+9iYzHS1s6FO2P45pP7KUZ/gIc6i5ekphHURlzX8pjh4UQx6eJN6ANHXxbDa2xyZSe1OuzaqgH+kM6lq2TLeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774520694; c=relaxed/simple;
	bh=ie1aEuh6VOVZ8zF1rfVzRvbkmpqMUUfyOzR0/VqGF0U=;
	h=To:Subject:From:Message-Id:Date; b=n/Pn1dqIdoo4Vl9JE4+9A8wENKHbqu3qIfhCWZZu2oUTRW9z5QkrDiwAgQ2wbw+xmu/FBOPugzr9DMTFb6MlcFhv2ISwtEJHnuZFn1F020vFcMBpFeuf2TKIcKM/MbWsKmf10EOlW20HMnyZtgevA4NXwY84Uf2IwgmxN39ihS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGcsYg2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGcsYg2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB369C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774520693;
	bh=ie1aEuh6VOVZ8zF1rfVzRvbkmpqMUUfyOzR0/VqGF0U=;
	h=To:Subject:From:Date:From;
	b=ZGcsYg2IaWEB1p4DcGGxM50lngZbk1gyW4Q6XhqNDGY8XGBckJXnaShiLVL8PcCI2
	 G60W1gmDyZToMH9h5KQW++TrUgZtnV0l704+OelyemPzMMhiJx8udbXdHo29IrEP9n
	 qy7UK6ePn/Tuf0KKl8sgNMCBN7AlvEy0SCJylbfYdJ7ueIV4/Xj2nGysTcIRl3dU1r
	 Ba0pM2YJBDoNXtxxtRZJvQb6flszqc4oIBDHR6eUmhWsusq7mXLgkyJDnGZ2CqHzLW
	 feXuzGFaXOu3ZK8Boi1yogxCJe9CMfavNaWux+teRSROCuWaMMJFKq8RPpd7SSCOa6
	 mwfo8pQSCIlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB19106F31B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452069359.29821.5139429484172750987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f524dbe5134c7802e69f9d5d10189f6a6d7a6df50d5ce0fd436fd7f3bb44e1c4
Date: Thu, 26 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774520693
