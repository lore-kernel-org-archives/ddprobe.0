Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AF61519BC
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748008794; cv=none; b=Xuye8D84uCdxuDMys0+vdfg0QtJpKDsEcUkABCJZCHR+iERHzAKJpLcorhof+fOtQjZh7Bl5VbIYuiE6YSEnLLqCZRkXWYG2T7YZa8aPc6VqEtr8aZ2uSr084najgOnkV+QSbW/G89AK8QACkftDUbEw10Yxf+msv1yNBezvQ0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748008794; c=relaxed/simple;
	bh=Q5pfQNK7cJqFEtBjmfxZcWVRpTVuB+J63sRMCEUr3nE=;
	h=To:Subject:From:Message-Id:Date; b=kk86Hn4+GyilkCDgP8gpvhv3YbCHWdWdHwyeTT2yDAjI+rXN654AFvvslq0J7fLI1hCghubaVIitLT6Q3GWfH3M6e06mvA8CgECK30hzC37Ivq6zqa+d6Ai2YVc/hKic2qz41GPQawaMdGXQo2Vx17YcgQkvmdOeqtfo8SsSxfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYcfUY2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYcfUY2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE2C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748008793;
	bh=Q5pfQNK7cJqFEtBjmfxZcWVRpTVuB+J63sRMCEUr3nE=;
	h=To:Subject:From:Date:From;
	b=rYcfUY2Kg/sJzyPqyiYE8Gtg/5npoN0BvYszhmeL5oy3XCGsMeQR5UAo3erwCXbey
	 i44PfjkzLpHzcZkc/j5EbsLp+WmWpMKNy6XRD7uxfMpbz2/DLKzPINF0WylCT+V7Nl
	 LD3WPexWvO7eburXDbeIkxcHD1zUdDp+tE583wGLdfZcqvXUPfDj4uX7FIqFzWYrun
	 X0q3fY/LMxb8xLZrtZrdwsHjC/u9uFS5eknYtNiP+rBnNb5XXqF5NGrQuNjeK9aPnj
	 Sj/clhNmphREOUzsiTInyQ7uAzMSNhL/nkoGt3J/K4adtLm7oD9M5VvmvKZf89A+Ax
	 0wAm6Fp3aBHYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91897C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800879357.462.11544587972582356134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943e3aa2ab925b0aac9706bbdc6657810a3e974fd1726f78176d59bb0c19357c
Date: Fri, 23 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748008793
