Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E35128BA8A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745860794; cv=none; b=t55BXfrC7IttQEHuEABIR5qLc7kZmgfkGHMScb6EXYUhOSUU+oqAQjC8EDLwSntvreTugbM75FO1jccEyZNTjSEqpfRhQ56dK315rZanlz7089mI0HVUlf3Rtug/JJuKHxvvui5iv65NJvfS6VGcOB+6PWna3y3k3PwJNdKmFJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745860794; c=relaxed/simple;
	bh=fGOEwgYRxxsZyALZFRXYoPrDcCoVkHYcwiw4VlYBdSo=;
	h=To:Subject:From:Message-Id:Date; b=EI+y8HKCtqekkMZcP86qwSh7DhznC9QBdCvJGPnhSnLV6wnmkloV7PfR9DUFlaSR46s5m3eUyLpeUoUlgTRfQsXuvZW7zrt2D87Gqreov6JYXP5GicSlBsPrN/b1+VmQAAqP7t3d3TiY7hYxKJyIKOmORvt986h9VFUO6MkEcJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kELVCxRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kELVCxRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE8BC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745860793;
	bh=fGOEwgYRxxsZyALZFRXYoPrDcCoVkHYcwiw4VlYBdSo=;
	h=To:Subject:From:Date:From;
	b=kELVCxRp7K5rGjComGqbcSm3ooWkcezBZSPWlq97yriM7EQFI0MCtNkypJRR9nbOy
	 xprhsYx1CbWB+U0bWSvY6OvpgxO88YU+LWyGS/Q9U9wNpi4hn/d2Yy5TLi4hb6Ik01
	 DWhtyOMAwSal6VFFymdXhwFQd47MwN3MZ5zAO7mihR1l7slD8S4kEFGlPsTU5uNOFi
	 5kNgOH+j8GsOwqgzgLJFQGX0MGmvUnBL8xgJBykIsAZHUJU/K0OU20iszvS+EAWTJI
	 FBxXr1uQGPev/wlkWUerdQAa9lCwXQC8z9I9W2socDPHWV4i5qNlPz2aXB2R8WdkQx
	 Zk0T5xNFpcjDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F981C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586079358.1775.4681602506138989686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a50795833be91882c6a9f684237cfb7278585760f1f0a7a3c81e10721943382
Date: Mon, 28 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745860793
