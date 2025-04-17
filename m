Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3437922371B
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744900194; cv=none; b=jUrN7WE5t2gM2HebBkZW7ozKqMWiEFNRB6bnqE1h6u5PxkENe26aqzPf63sWJ6XL6ctXUFhcPR5KrG3+BUhNOgfXY6MqhC4A0Eq+iSl9JBRD8xYsA+sPABGwtozod0RfAWsHxj/oPcDyi6MNkyetvMeVT8IF9F9wod4bw3gm2nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744900194; c=relaxed/simple;
	bh=oYPeKt0PC57JvSfLAHqr35ay1e2VdKYxZIR2TtpEi1Y=;
	h=To:Subject:From:Message-Id:Date; b=rvrqLmCRX1/Yzp5EGUVno4wb9P0G3jCcUg4f8hAoYmcJMC0BuxTsqNpQIZhk4hUuQNBIHZWHBSgLUS/+xhf3lC48w+NxcI1riH8NSesGCUbPKog3W+tTqf5N4upzO1uCYgVTv3hFEdbxrIBWaJyIJJvwpEfOSI+NxnimeUnmF/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udjmj1mB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udjmj1mB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35EEC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744900193;
	bh=oYPeKt0PC57JvSfLAHqr35ay1e2VdKYxZIR2TtpEi1Y=;
	h=To:Subject:From:Date:From;
	b=udjmj1mBhXrTZwAV3jGI8TNB7pmzu1W5ab53EA4uXfQuFqRvuvsD31LEA3qqXT7o5
	 dYawztB6Qe4D8adrPSq0A9SbT71jGnHGoDvlaKtNk+sebMkDwfXrlMmqh1miylNBex
	 sqpexAsAxYgO4eQK8vzOlYfx0fqj3VXX4j5SRb8gQCUQNMjZQaah+JaNTismEfR4V1
	 7fOML54UBSPPuv4P7OvY8I0YECc3OjJQAnbSaPaswvgPivQfNcNWimJfdy2jXEOiY3
	 J+JucELPVF6AhTI9rYkBiq6dgMz6651SHvQAr7Fj6hoigsNtHQ49Cqs9a1r9iKceyb
	 LFNhDI/w7BwJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91279C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490019358.30667.17197801817805438511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31336eec5d0b52261dd4e7f710c8656248a23846dccbbbb13fb09b4b53debc13
Date: Thu, 17 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744900193
