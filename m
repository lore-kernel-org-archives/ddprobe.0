Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E241BB6BA
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742641194; cv=none; b=gxQUlpqSBjSRo0ZGLaBwoCSVqOIZ9oA0AY1/ItREcgtmtus/+aPOfhHTDtbT5GWjzkpFvuMcleaKWb6bJ5IE0jRQ8uIyO2YG1Dw42AeG0QvRSX4ZmSJA5zvKKrc5N+q05iKH+g7Mc2TW1uXSwBPJvlJeXZdYXm10uEdG985OJYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742641194; c=relaxed/simple;
	bh=IPCMuqwFH9xlcvlGDoFIeGCagrYD6kSc3MAOiJ8EyDo=;
	h=To:Subject:From:Message-Id:Date; b=KWuQLc5Y/+2B22rjMdu+5jb7WrWu30baFIkd6eFEFr2AbHg2eG3bndHT4vztbZx3JNg+8zDluOYQytF2mtHH6eRzqFz74NoGix+7ijZ4KXP/UKNSTOORvYN+iBA1hSxeMip4z04n/12S0FCpHE5c87iDigdrFgjoK15XJAUCuHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2AQzx7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2AQzx7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD913C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742641193;
	bh=IPCMuqwFH9xlcvlGDoFIeGCagrYD6kSc3MAOiJ8EyDo=;
	h=To:Subject:From:Date:From;
	b=N2AQzx7DFztFyyIxW8KucXamwAcBQC3eF5gcVXbrKF9CBje0HTx1/rrILF8/a+jiB
	 fhb2+7ilLP/YL0Wzh6SBkgM8uY1+DBJPWPV8Prac1ik4lFXbRNc/OtkSqnxamQebZb
	 5+QURani6t26jnKsJHPwCiRZws8RcTd2WhVpVF6M3IU86z25srAulBHqpyIH9tLVgW
	 Ue6T5onmqRLvQHv/0S/P9kKJ326EzXUTNKUTp/Irhh3B8cXsA+Chu11ltfDIEwmOq+
	 ElI/nQs3YFatPKDTVZVeUsYBbpoPm3Z/KNdn2+Lx3EZWUiMWym8vZJ3zCONNpf550m
	 IjZ78u+SIuoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915C7C36005
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174264119358.14669.1398240811717198771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346cb1ce2feb5c444c581728123c40126b6178854e60dabbcdcd5d602c1ddc19
Date: Sat, 22 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742641193
