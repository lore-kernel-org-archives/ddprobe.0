Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161A625A359
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776968254; cv=none; b=jGaiU8dQ8pETYzRrEyKQ+KCfNzhPOQfZJ2W5SxauI93oeMdk5zmB8qXvhXCjzWw+OqICfbiGWQoKTVc7vjYYgt6IOX7DNDkqK1eWeQL5suPpWPwzZx58S+LB9JY0CrRbH2LDFLIleQ+J+z/h/Qw78OAQbBVuvrWhrx1gZL3ctkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776968254; c=relaxed/simple;
	bh=Pyhs4SMX29NSjSCdMRo8n/jRusDyb7XzbX/IRCxhbq8=;
	h=To:Subject:From:Message-Id:Date; b=Ik9Gjnsc20jEzRNDzc2M2R5r0REyHXCMlWLUQsBrpQlNW9RYeXKNdE1XDgbqdQIh8Y+TiSujKVnuM05dzSC6JBggxJiWDAnknWELbg5aRxDNKptpdpD+umUvqzg0oatXEp1M7GWU8EvfqIuYoQnAuDF793KHqHuOKA75X+xaJCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbcEbZJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbcEbZJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA83C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776968253;
	bh=Pyhs4SMX29NSjSCdMRo8n/jRusDyb7XzbX/IRCxhbq8=;
	h=To:Subject:From:Date:From;
	b=EbcEbZJHo4hE00N30mMDbFt/4/fz9cDvpNL+QdAlU0uxDVioQ7EaICQKbP1uyGb8r
	 iUutFOEU5xPQnij6J72LimG7Q6k32zfqs5KDvIYCG/zPnsC5q4VT3ORP1yXAZJnzS+
	 xGkj9nHWPegYt+rCewcWVQ+O7eWyBVStI7FsqhXZQQKLhtzHZJCWjxSoTVEqqeG3j9
	 lHf6m7E+n0vfN3w1DwKk7t0teYZgi9cufOCoELMJfsqwt8TsjYvvaw/WOxW9Ig4kmn
	 yPAHPJSCqQKnGBaVewMD8SgiJa6tdEvei5cgcpNdd4BKY8GmqQHJAwzloQToDzP8GP
	 xkywWoITJSMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF99FFDEE3E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696825368.8692.7722776128575846860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70d3e3c72253efed51dea951d5228d695e3d50d59bd726b352517db803daa77
Date: Thu, 23 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776968253
