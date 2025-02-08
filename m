Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4743F8F5B
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739025954; cv=none; b=p5Dgl18C//fiXUU3pz+j47ONeGyf7WDw1kSEopLMpYh/ZTPrY86egq1Li62j0Bll2aiz4KFLNInuQtoCj+7U6Cj5EP88+7I8s14MjHSok0xDWjs71MwRNdC6BKSLkYNWEB1UG7jkr9cKfimdfmFiu1ra/UOBj3U8z0ZA6zEwMnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739025954; c=relaxed/simple;
	bh=p96F/fR76R4azNdyX+x8rptqsMTZZ5AoVfUQA+520v0=;
	h=To:Subject:From:Message-Id:Date; b=Jkmx+EZ7nmE3OHRoAihPh5dAbClfS+l6V6ySFQw3b77GJrS9ClcJATUX/tFMR7lYAnOlEGpiYRzqjCCTUia2BD30zSlHbQCrwVSPQMStzAO9H99oFOcLxJn8DCU8EfVxlm8/gRuPo3y/pK5ii+0Oe9V9MhhYFEsEmXsW8bsJkaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssOQOlv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssOQOlv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7289C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739025953;
	bh=p96F/fR76R4azNdyX+x8rptqsMTZZ5AoVfUQA+520v0=;
	h=To:Subject:From:Date:From;
	b=ssOQOlv8jnMJMHmdyiJuOROe8PcZeDmaB3dinKhdy0AD7EhgrNIp5dw2VyELDJXsM
	 R5Knfoddy3TxD7VqrrB5FIWYNjjvwBdd2sCRZ3boteoU+8WrP6Enh5LYw2kyEnlBz8
	 ZdlF6Ad2QHKzDfpVo4Mv6k6VvBMW/VSf5Zylv5Pnb4JkadV+5oB9bU1Vkd7oGCQY3i
	 udqK51LrCsBYqznVDk+fFrUM9HArAHir8B7mpqTD2SLEL9HP4GHNHPRjmLkLv3oVJ0
	 csrtTQJezRyb+I/5RGiuO0Ba5k4aTFtueGkod/HYB2SEB48Ol7KlHVoOjb1OjlJahE
	 MlM9fKAOOMkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FEDC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902595365.17875.8990616762917910779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2a8015569632bcebd955c1f5fa7a5532ef96fc3403cad23d8036378eb9fa59
Date: Sat, 08 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739025953
