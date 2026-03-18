Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD5C231830
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773812694; cv=none; b=LRAylZbmnLcuTM9TDEW7v1xbCj3aK8ykcTdcelLWXkRDIHm/ZweR9lAuT5xjKnBHvJKXn2Y7Mt7LFCir0HHYCOM2x7unxq4LpY9QC5Kt1NgrRx0RoolGDNF1/Z9fN/+5PjD9Pzx7UO9+uZ4tHfqhHS5HcBxqQjTFHjHDCWGzPzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773812694; c=relaxed/simple;
	bh=/uLqbqJGd7kasc6eBqXM/qMPPuVqB/r7vvOLM+ibRM8=;
	h=To:Subject:From:Message-Id:Date; b=AmiVL+JQn6iI04b+Z4/kFXe3BrpzYq8n0Hhwk0dhAAi0kqQOIQ8+NWVX8CLi71we6dJqTkJEL3EqemcKPOT4vNujLG6tmYR2zcXiokelgJ/J/ubruNynrAOSNE9HChAw3/ORJ1BkV3jYBt1up8OzuMt7Yf/2hImLH0SIhmgKRAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXKvBimc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXKvBimc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFD6C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773812693;
	bh=/uLqbqJGd7kasc6eBqXM/qMPPuVqB/r7vvOLM+ibRM8=;
	h=To:Subject:From:Date:From;
	b=VXKvBimcg/HBLVMs8EdJUMKXePJN+BW3ds1ILghTy3dwBKl6n7hQ6yOzXMmdYQPAf
	 NGQkh4+T7MN/O2l/39yro3aNQ9cLSCJmFlLUxhS/a9clQFvR1qAmWEGXigmQccDNiG
	 DAIaogBwmLWLOVvE/+zUqMC0njCmKv5ROe4qUQSChvwF0/jv6SQ9ZdrT/cLck1VGtr
	 QpIMR3qAC+dKJOscOjEf3GyKokglBqq5sQ9ISlX/LWGtr7BO/7ttE7cJHNsNbCkyTp
	 hOXMlCo84l+gtAE+OwIcoS1zjkkZPgkJ4FrX9hlB2jjCuWKthHF7+vE3LGuGFczce0
	 +++08qs6WDoWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE51FCD0B4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381269362.23599.16741670807012524624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe846582dbd243e64e036810dacbab15697a12f468404ab3a50d00dc28cdba51
Date: Wed, 18 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773812693
