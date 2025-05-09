Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BC628EA72
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746786594; cv=none; b=SbDbwYYDqDjgnbusQ53jJjcrE7Dt2RLK0zNqBY6Z4g9yL5bqGs5nYd4KZX9GhPq6WcWXzn7hG5vJtW0iAQ1ktVg0U2zgKCrGkaS2Zf3fLzcT7q0xA7w6vXhaw2KaFJTluCgz9FntIrud5thE9tQaWWfXUa28jL2HpBTBmWjh33o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746786594; c=relaxed/simple;
	bh=xBfd5viW/AJVkZZ00aFLZzuWjOjvq3cOsRlnviplqR4=;
	h=To:Subject:From:Message-Id:Date; b=s1+W2sEeeDughDGAKIjkgs3oq5noRBSLMfJj7Czz/gd89sCZC9OOpF1k/dgPbPO3Vi/daeu2sK5aUTt/7nHEY/NL95aUVWcHIhV9ZcApcJUqVKXUWM1ZSx2Zye+i8pA+hvK1MON5d6UE1/NqkdlZZo2HlJXpHgFYsvCUjDzXpw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxhTZGu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxhTZGu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A161BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746786593;
	bh=xBfd5viW/AJVkZZ00aFLZzuWjOjvq3cOsRlnviplqR4=;
	h=To:Subject:From:Date:From;
	b=YxhTZGu/lqIFffGxjsAB+8V5qxraoyiN0h98B0q+weUMA4Bd63ClTe2Sh41XHetrA
	 8kulfxnSMP8thYX/mqMDphAxgc2S+87JibFi6Oksssc8GacmvLbhbPwZ14d+YTmxqP
	 FViE3srQoizRoegPb5LUKNyvoGz4a1sy4asp720GwdonyQAeWZzvWrz3B71gYMEifV
	 QiRDmXnMZRS8kgDG0FhxYC7ruIq2i2Z8q+Hj0/6UuSH+Gwlfxmh+ITQt6jKsjEOrQO
	 Yp3jbMmy1gik5nrzHnoSGweX9rUv+lQGe0056vAuHOERfXJ5gEAJUFeXakN7Kt4CwQ
	 rLNT/KbBzwPYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE02C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678659357.30216.6970135309775433565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fae1a90aaff6d274521c4160d75da94c60e5e241774203b7b0c855ed1f1498
Date: Fri, 09 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746786593
