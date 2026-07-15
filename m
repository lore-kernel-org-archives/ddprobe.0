Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FDD25F98B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784104714; cv=none; b=g8CpxMmDw6Q3n+D99PW/sRWZunCBtCIdubOQaIzMRqXMAGHowFWVr2wjXjXanbvRoTCMghSkH9Jmm4pgvlaSO90E5pK3NUh650GzJa8+PnoRu3Pm6N8TVX7vj0ZNRaQdpp3y2ZRZuWD393wG5ZI/5ndAT9qM/w69/jXnlswUMI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784104714; c=relaxed/simple;
	bh=LxH1DJnnXFu4yYlpP0z7Et6OMu/hQGeAlqJGjTRTlOE=;
	h=To:Subject:From:Message-Id:Date; b=DSvT20GI0ivhy+m12zepw8Fue7+HPA6otGHvOXt7lud3tFQyJrNekAsaxarVk8iQIRRvBrVTJBgazU0FBuBx80/59rt+QnPAOUn5eLfrs6DYhnuLVyhl/HjBRt3c7VQo5iZ+5vyEMgd0NSg83Fyhp/QPSTblK5n8rtboT5NNb7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCyQ4e6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCyQ4e6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBED8C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784104713;
	bh=LxH1DJnnXFu4yYlpP0z7Et6OMu/hQGeAlqJGjTRTlOE=;
	h=To:Subject:From:Date:From;
	b=XCyQ4e6TqTmpZ3udgol0s9qiADjs1tbr2r6PLG9ZMFIN0rrYzvVqnr9J9pv9y5Rov
	 GwPxQZ7R0OWdCOjfUDFapnKs2/VvjDXOqDsmkz2LKuHZfja4CG/LSvtuF72xIe/lf3
	 VuPa94WpNhY+gkM7wF9dGrK0xjNYoZ27a1GIGQ2VA87LmV62sXyagtD3x4qgZs/+vJ
	 t/m3Y4TYKJJfjZNyjz+mCWOYWlV/y+2kUUPH31k/b5pRRK0KJHo4jU4PxK2l7/c/ho
	 5Bz6uhJkMKjgpFYpV9VfclCKFvYX07ep2S8HmonwBEXOlRGcycz1Kb4RLt+17CIh5s
	 ZqE5YrBHM3J3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CD5C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410471368.25118.14875676316878142823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd5447cea710568d94a6cc31dfdf9d797a73e4e657dcef76c3cd378cfba4504
Date: Wed, 15 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784104713
