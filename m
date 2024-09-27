Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC7A15A87A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727439353; cv=none; b=Q51BuQiW3iZsSn+ZMqx181vWZJkGFLaIiaveMDPlMUqncdJYV9UDpVXOFCMmFA9kNqZNVy7etdDmzx1Pc3VM/bQNll1CT83GpkMnV54H47T9dNqFnvNNMQVsUkkn6lMHyoD8k57DUSO0Zr7H3sMxWWAobuAB117OGFE62jf+eFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727439353; c=relaxed/simple;
	bh=/HcCzw0BDh9N7knW7whFO2Z1gT6kd+1bJKA88jSU5pA=;
	h=To:Subject:From:Message-Id:Date; b=m6iDUMJLHWb5uwosOjy9TL9DCL+RwAeekgpi3mYhCD7Hdb5ZM0PRQjnT4Zv5zlR/EOTDqjAwDfxoKOYPfmYjeWOoijkpXsVr1y3g+nWt+hrgLTqQBdcPPpgcvmjN9uyy58xtXfK2jtnqQzeDPQPSMSKN6g4qY0Ccok6nybumNNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1pDYNGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1pDYNGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F5C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727439353;
	bh=/HcCzw0BDh9N7knW7whFO2Z1gT6kd+1bJKA88jSU5pA=;
	h=To:Subject:From:Date:From;
	b=h1pDYNGHX8tHGJyE5zY3YMgC7jdWECzCfT/1d5m0stRzj57Hj+kG98PwOH5aax8Yk
	 3ExN13mptfupvZbX+7YC88dIwGogWmbTx4yZJnRfG75xvl0GIB6+6D+cSVxCvbdp3I
	 jxXhAirt0V4cEL2rx1zbA+Ho6Dhnx92gudb7/Bkvb3fQOu99tOY5kFovL1NLwfaDVK
	 VYZFwHHRbOOCLFt0M/rZZnxg0rhj3llIXkvNeefevQVKgGx2ZP++Qv2vZyyL8/sHcv
	 kErb1wIyn/5rU0166nJWNKdbbv3pdtLP4ThNWgateh4RYhyaqvBcbzG0bvcNmND/cF
	 2+UyQ4v5d37CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9840DCEBF9C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743935361.19861.11046454006083002300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b283644579ca35c7a934b6946528bde9097285661b2c8cfcf4ea51df029165
Date: Fri, 27 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727439353
