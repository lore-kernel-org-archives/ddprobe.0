Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A98E28540F
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747335594; cv=none; b=cCtyi8wjew7ALcOpJbvCojq7nAUMl1+JoKYhaz14UlHlQEs3yasZvc2TjSlUN8UQvWp+wnBPQpMWTo75LkM1Uan2Hu8fh7766Kb2fORb5aBvoFMJTfCucWz6Wucrkcw8IuPE4tqvNpO7sWZWtR9kBxLgMamrBOOlVBpTB647Bdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747335594; c=relaxed/simple;
	bh=1p+KcApzqtIeSM2BtKZS+tlb1M7IN8F/Cx8J7tE8XcI=;
	h=To:Subject:From:Message-Id:Date; b=iDhm0tNz7NpYaiSxYNqJCn6puYTDH+d3xGT7gWzyP6ieCaxXRSSjf+arqWOBFTQsn3VU5BoPQR7CtjrFfTW2hRfnMhRF+/3DCdpgFAOdA0NXEx9D2VEYMI62lQHnHv/x0rwUbN2/89rMTiBw1f2gj/oGXDvt4/Ymbj2I7WtpvYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5TIWTzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5TIWTzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0509C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747335593;
	bh=1p+KcApzqtIeSM2BtKZS+tlb1M7IN8F/Cx8J7tE8XcI=;
	h=To:Subject:From:Date:From;
	b=M5TIWTzElJLVzMMnAteqJwWzMB//tBPvPYO59+jjqMtCHTD8TieB385jRWwSc00K5
	 R30OhtVOGDWkI9vD0zTd4kbHUK2HrZoSPZq9JDPtfX9N8GNSjyiLdnuWSRWJN4oHs8
	 /ZOTeo5cloCGW1hxTdgJYOSJzKxJxUB1f3VAOghuJ5TBQHi0+H11Wp0xRrd51oTIV2
	 3y4Wy5yIaxwrDBHw3Bv6KATulmKriyEHJWm4njtdudIt5hruopkwaslv5Ybk58i7ye
	 qNpZtAH0S9VrIFi5JaGKdscG3pZylFxXHmO9fl9gYfzUVdMouw5WQ+gK845TkiOR9y
	 F+BtuZgKhEo1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733559357.28591.10999615665418032517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb6606a3d10f77fcd357553cf70a13a93ff809e150e36d02383ca8630d25bec
Date: Thu, 15 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747335593
