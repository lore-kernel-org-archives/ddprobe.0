Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D4F26E703
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763117394; cv=none; b=SRZ+SisV0FAAUsduin8UgsJgQWzAqnYdjiXa/E2L8sP86L8ALqNR7w/y41JR1LoqJZ9jHc4aiiTf+FRkdqrHbg+7w5jNJlZOILQP62X2shLVO6CcfHVpglOUPhPVxjmYe2EWuqcQI7QZpPzV9liaHwOOefwPFRuvBoLet+fYQko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763117394; c=relaxed/simple;
	bh=qQq4/Nvj7PVv7C/IR5NMSB8Fr8W2/APyR+B1RVwvxx0=;
	h=To:Subject:From:Message-Id:Date; b=R0zOXIUzy925thxPCFW5ah0coKLOeXnzscmBmPux8Xe+tigem2Eg/th0VvWglLW4tYla6MMPbzJHXUCkpIoF6dgxk1QakbcP17mF34UnMR+ESrt7mzUKp9PmGSl7FPs0LvBmRpMDmrgBtjqMhR4Pb9cmkSloYGrxSKGjrhnOlq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHhTMCRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHhTMCRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72EFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763117393;
	bh=qQq4/Nvj7PVv7C/IR5NMSB8Fr8W2/APyR+B1RVwvxx0=;
	h=To:Subject:From:Date:From;
	b=pHhTMCRktS672dRIXMHjBjfrbl0lxm8YpIDO3mBaqegjyZ+NW1Fu8GtfHXE/F7Kt5
	 8NKa8s98KFtvoRLJio7m8CvbnnfkfIMVtipFPL+QXsbpOu8mxlYIiwv9NvhEopRciz
	 qmm8jNyxfvD2kpPr2TcnKtUPL8AhZUDluP/R/fgfMNxWSsA28+01Ifq1lZtaLgk451
	 Idc9raGlM3ZtnhxQUkh36GJvHGA5Pin/14/LQVeDr8AXlHXa7hBqozxmAKNg7QjSlP
	 Uw2Fudv0MNdPq1r6vW+7ZnwQvteV2Gw83wHRGqvqj8Bvx46BKVRF/uZSquA6skoQ/v
	 9nH5LnOdTpXUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF84CE7AA8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311739362.10103.13438079561113482056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4310998e90d22dfbb203165bbd9e496677b55485e8782cf4808322f70403f24
Date: Fri, 14 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763117393
