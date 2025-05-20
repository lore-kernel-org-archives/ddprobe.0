Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308B1243367
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747750794; cv=none; b=M5Q/8/DGHeM7bW6slxyGXtl9DfBxN/iFnwO4543TlHkbEAfC84J38Q5r0pyOCRuteFy1+t+28FKW5IEwlKfMY1Gq0nhOZIdfzYG6YXuDSqy7qI3VMZ/KMVvGOIetVGkqj0skIy2oyliqmCcHTFkPsa6gPo32m8WmYmyWk2MbF0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747750794; c=relaxed/simple;
	bh=5w2DE8DtgqXuqGuyUZJ6CQkCpLscfwqG52MKzgopsQE=;
	h=To:Subject:From:Message-Id:Date; b=tztUqxar9eU2vP1kdrNk0G0ji1l3Bdt8ObOpHdP3xFfMm6b/bcusGh0L2edrcqN0cAoI2JWsEoVfMCgGDbmQj+bwzjU+BFSltwq3XTLEGVm7+ntoZUieyXt94DmwuilIDCsnF4RuwAfRRAainpBxF1PEKARn3s0hkw1dO8IbqsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8t9uRKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8t9uRKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D1C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747750793;
	bh=5w2DE8DtgqXuqGuyUZJ6CQkCpLscfwqG52MKzgopsQE=;
	h=To:Subject:From:Date:From;
	b=X8t9uRKQQcGn1QZu8sj8tChkm2/FSnifUDjSTGlfRnc0aMjgCUpA4WtdIzW0YZ+VL
	 1bu9U25+RVYjQMt1XOkPxnTm0xowovCvqFaI6cn1JilAw2sP7AgcAvnwbbxAM4R8Bb
	 jkW/WWTaBZOO6WHF8VdVEo6DR1ozAsZLurIHsZumzNexqtBIGKi23hVNb0+9NZI8aQ
	 iA2wng6YNHsm/4uX1sSl+yaeDA4tCDS7wNejpUhlzYUpGK0qL7QIglXRrVR9qiQFU0
	 e5SoJ6cNejq9qpcUumv66p3YoA8toSyPWwPMT2HJSOqARV9EZaa2JqjR5pw+h43gaz
	 C4yITScLyuknQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEA5C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775079357.19863.10969224214545781300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20427bd33d5448bb2b473d4d353427f001fb1a491bd905aae2720249b5ead419
Date: Tue, 20 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747750793
