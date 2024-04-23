Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B2A17BB7
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713854423; cv=none; b=fhSZxchJxPZCFHYYDD+irfjz9mVg9XgEJ4u2s8vz9R5Q6fm3E42Oo7ebJwKECIwZn8k20CR6m+otF8Z0kTt0B0kEqGDCwTlcCUNk6VJCwBqpaS/ivHNZ1uW2zFsrRmu3su/UMUD1rrWdyz1jfi7Hu4hkoNK99WoMCozwlpaZnfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713854423; c=relaxed/simple;
	bh=u4Xxfm3U/V0ZDX6OA0kJ0hAH+Hd6fsmi9fciLmGa34g=;
	h=To:Subject:From:Message-Id:Date; b=YaxeNz6qag3xOjYu9mm8hyVYJ2HrmJqVDXoxa2Uaq1SY7mBm4JfQe7OxigxUx/8bcwP3zINKIk2GJ7b8JGzQXBLUI4TFHu9gmgZszItWnIVoOiqJJPIRMBcKjQRbFkndvY97OjvV31w1NM6zeJsiCohdcPlWZeIeTwdFRYnvUjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYFVBfht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYFVBfht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ED9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713854422;
	bh=u4Xxfm3U/V0ZDX6OA0kJ0hAH+Hd6fsmi9fciLmGa34g=;
	h=To:Subject:From:Date:From;
	b=GYFVBfhtwq2Df2Uh4bu+13bCltpLWTsLJAwiieEMnt7VjKoVyA29MrKWCjnL6hNp+
	 tmyILoR/h9YN9YLmhe7Mivr8pNrtQeDPGS4DiFvqy7xfgDAzAzfE+lYf5eIlEXcWM5
	 BL9wkt5IkJz29jXD2kcexL0BsusXLkDznovF5e5xZa6W+KcTO1UlsXeALVSD1Tj5wf
	 SdFtOA+LloTL0hczQ10qom8oMZEeo/d+GVlmvnJvHuqCr0HIQNeQ3TyQzucZ4SKpJn
	 Hlkqpr/mfdb2We2jZDfGYal5VNt6uPFA8S3wYVd1I7le/At+UhIeG9rV4DgDU9RwAU
	 0aStooCC1mg9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C091DC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 06:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385442278.26717.9524431083110952960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d76d902fbb38679178d13af53be47cd70a7380240c07a9fef4c4e4742da7ac
Date: Tue, 23 Apr 2024 06:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713854422
