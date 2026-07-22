Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659B945D5F7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784746774; cv=none; b=WbImW3DcjIEeaYrw0EVJI3t+NWI/pyiyYPPasXrciHk9og/ZRd1kv4Ep1IxV0hPv+ZqQejRiK8Qr05OiolUStm1yYXXfIPDqSfSK8/BujuABTclHPFC8To246tKLM57YdI+wodpX1ftqaYQCwbfIQQZ1ygdj3R8kGMxCyKgR/PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784746774; c=relaxed/simple;
	bh=t1GCjJo7aZqCYbcwITJY/b264nnF6vrSQjLcwMp9Sqw=;
	h=To:Subject:From:Message-Id:Date; b=kt5dBRtrVr1VCvX0wtBD8Ffuv5OOvvGUW33omMQhWhc3WqO4EO9qUOFZ0mF4dP0g2VHcZ0MiLAEUiqsdra63F1TC7X2tjrHCfeQqgsrlA3w0UiUf3qD1XeY+xCktvxj4UFwpU3mbPkDt0G6FXOcTQNdtb7LUZ/3MVj4Nv3qUg6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR7yiOLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR7yiOLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5B4C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784746773;
	bh=t1GCjJo7aZqCYbcwITJY/b264nnF6vrSQjLcwMp9Sqw=;
	h=To:Subject:From:Date:From;
	b=SR7yiOLQ0tKsddBxydOiNdRdi7K60NDyaL0gOlXZBBLN/AU0yZz3WfWZjEVcqgb8d
	 XSmW3WNDcBuB1p7OBuZSQIP6O98IdONTRg0YYJUnS4fBvni8Kl7E0pgUR/FhAoyQtG
	 HqyY2KQGPwhM66uoNeZwlZyT3lQ9VRmuG2iv3uWD6Jhgd25erZB9JqeJHrqaH7l5i2
	 BafA1CVaTM3gCP2kZ2yot4wut73jStq4yqC2bNYmkaJUijRJcnClksRDu402CkKsa2
	 RFEvk9HJy5IokZ5A+gkq7JAK1cvRAx7KKvt5tL3U7Wva1LLaMr3NA+W7rNpb8DM/nH
	 7uJz54bTyycCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA42C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 18:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474677369.20125.2064821254905665182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dda8c0562f67956b3601b706c27de97b42f45e4de0ba487aebe31933793dfbe
Date: Wed, 22 Jul 2026 18:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784746773
