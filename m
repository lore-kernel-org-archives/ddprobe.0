Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9DD248880
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785052234; cv=none; b=QtDPtCylA1xuP44AVoIXzldhshx5DA7KLbVBbQJ8kldW+W2FKa9/mMCHHe+NaTUhs6Zioqd6uZRfwGikBDdyHs0wPM4RY2WlCByNXDKSY7oeP/1uvJmMrI+ow2FAFWXO4uA4bPKbZVBtGcZpeUT8A3tjYNf/j6xKTDtSOhryR3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785052234; c=relaxed/simple;
	bh=V/s7TRGH08Uz6Jd46/F91JC7V8RmRdTpiMiaCEOIVlY=;
	h=To:Subject:From:Message-Id:Date; b=tEdOqPvvNCuXoo5zfgs/ZUvl29ufvwceDW1IyJm+u6ZcVJcl0i42dLJeKkK8Y8UzXHnK1HMzpC8DPI+GT/YxkXTCGYiWAhLpqmKo0HN4BIYPCGbszlXCqeI6E0xnrf5obcCGHIdOcrFUMm9+oJRGeS5Irae4M+ho5OJQtsintEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWlRCufK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWlRCufK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4290C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785052233;
	bh=V/s7TRGH08Uz6Jd46/F91JC7V8RmRdTpiMiaCEOIVlY=;
	h=To:Subject:From:Date:From;
	b=dWlRCufKNc0806f0fY5UE3q+SfZd6djwsYyTBZUK+GX4PX/wYuC7SkH0BfI5JizQI
	 JRCC8bFVpSSEC4K2dO4S/8v60o/BJK5QMM/zDPJFc/vd4WYud8X8PJc2Wm3gw4OT4y
	 oBjjehhHP81gz8nsC70eUCsB7QPp0fBQVIkdADZWrWiCED0nodLZPO4hretGWGin62
	 NBRJm/MUe1qAtuy6AYapgP86JYHe06i57fbdYRjzyOIat0qSSOjdpo0kELO6XbzMwY
	 B6P5MxWWEWlG3TIQEpII+lJGguN1GHlEhTThPxT1EXNs4qzCP/zvUIJl4Ljz6IDLoM
	 AP+LMnS6Fhbiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4F3C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505223367.30489.8612016674838702849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495d5637194d599d8a67abd451836c0bf938ba856a93799e11cfde21afbff1d4
Date: Sun, 26 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785052233
