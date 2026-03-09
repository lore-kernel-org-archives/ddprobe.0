Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFA933C19C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773092694; cv=none; b=PGuuahmFZnq6BPZ04Ek2QxKNwQBKSvlM9m5TnwI70J6dDe6DpW9tLLU2DrHqe1dJOa7RxGx+KTmGLO9z9DCQ+QdysSVg13B4Efm/0ls61w86BDdPuU7XCRyywmNGYzfIEJZ6vKMwL2HJxOVvKdQGDtweF7JyazvHlU7+4uAnuvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773092694; c=relaxed/simple;
	bh=ouu0NA5co0akTmipEv2L4kWUbyngRTem9MJMPXeLPG4=;
	h=To:Subject:From:Message-Id:Date; b=HJxT+6G60d6ujIBAAh2TjsdSOTQSY8aksZdYvAiUqLGftwZsAjPPXUUh8Xky48qbdVzkSvLbfRQunhjGviWz4zSIMQ6CeuM6rnQjbcZQP0wuWOHt+hERPCYPQk050+h2/UIBfqnXP3IBztW5jDI7+1QdXoyOnAtBomRYwB3rZF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq5gEUV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq5gEUV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E9FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773092693;
	bh=ouu0NA5co0akTmipEv2L4kWUbyngRTem9MJMPXeLPG4=;
	h=To:Subject:From:Date:From;
	b=cq5gEUV7CUnPp63qzGpUJNho/y4zIKCYdBFYa6HpPNFmLax4RjPH8lGBr4WIwsqPt
	 DOf8ADkB9+ZV37VUmw+vS3ALlSb1yeo1OFm1F2D67qadEVdTTo9HceoAH/JOZD5GYh
	 MopiFW0dBlt0xzCOTwzpRuvTpeeQqpXPDbQAPMQC2G0DmdWeWYPITEG0e34AufFzjY
	 JnviH2+QodPh17NVGqR5Nc1yNgJ19UWR3Hku4m8fpZNHii4XvEMN+au9ISn+j+H1gY
	 9j/HNZ5WBSeb0BP4MkqBHY2fp1RaE8ZXhqVR5iB3NL/C7MjOx/anlMvUpPsJ+FzZ9x
	 n7w9JJfBIPXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A0FCA195
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309269358.26008.5904322659054565655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe9b736199ffeca90f9abd0c54dc93ad546b2d259d9e36f5253a9602a043172
Date: Mon, 09 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773092693
