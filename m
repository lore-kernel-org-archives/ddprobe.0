Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345272248A5
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778817634; cv=none; b=NXpEHhM5UAmR/G33AUTn/Z0Ut2rNsJKwBN/JKFHWwM0oycR0wGPLk1GC9RBBGFzcADPrzCRm1CopRgzwpB9j1FWVigcAjCrt/yKV/Pn+WI31RByWJJKpMv2AWxEoFQmSo8ExBc4OrshBrQ/SgrRBH1LK+J2L5gj2m5oWwfcX3cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778817634; c=relaxed/simple;
	bh=DfbTisydy72CBD5JIC74zJEQTQ4ZKxqxgNc0RsJL71M=;
	h=To:Subject:From:Message-Id:Date; b=WK0eQqmtvEBvLooQsp6NEAZKPSPcwlMnspvrk5/qKMKmJPBb20sswED0JReJMZFq6Un475NciYPDUMfykbfQQFoPwaZeiA+3MF/pXebw06b9eS/aEgBNSp/8wrYJLCxwoyA5p3Jt3KHP5I39ojrh9ckQQ/qPjXfqn0LzYwvEHn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qx4MDtgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qx4MDtgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1149C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778817633;
	bh=DfbTisydy72CBD5JIC74zJEQTQ4ZKxqxgNc0RsJL71M=;
	h=To:Subject:From:Date:From;
	b=Qx4MDtgjpnEP9O+6AuC6ycyn4muks4CVGBKLTWJAcV2/xC22D/0O2oPweIU73lCvw
	 DW13zNUmP4qhRkPC77WoVLI/kAhm9iL/7N5mVhYI5RKxnZlgowc1lRXx05HLXhJ71P
	 y45LHG1cu1Zo5LDNUrdlxbuiTT4dWtUvr/7j/1M2LPGw6bZO9M1W8DqXEJI8pL5bdy
	 PRSZsruMrI/XlVAEdnH+lWgUHFAEt8JCCghZ5Q0HW9lUAf0K/PS1liXElMkV8os4kh
	 UaNF3RpxKSc7fponP7kkDnVYU121f/nqTS4WEniKAHoFwZO1QffaumqxtTn1ZUHi59
	 wWMz9B1QV+62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12DDCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881763368.21874.12151959229150146646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e387eb60601daeb2bdc0a9e4e1d49a023dae169c0b25d06ca8497555d1128b4f
Date: Fri, 15 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778817633
