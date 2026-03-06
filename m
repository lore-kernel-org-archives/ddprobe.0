Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6743AEF2C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809494; cv=none; b=Ka7As8p48KhyYHU3zskL3wzhoyDBi/hRLv3CXNIzdFCSlmplc4kXvuJz7iOYz/LMMCtdRqorsVF3oMYixqWRuKe9Itibrrwug9Yi+xB+3IR29+AzZaRqHBBCHWQSTkmZMdfOj94Qr8LAf3boKnSYYrwdxtsPs/1+B9jeES1x8xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809494; c=relaxed/simple;
	bh=fni6d56k99SEn+bXVLHJvTYvF1JbsLQFl58bLDbQKyU=;
	h=To:Subject:From:Message-Id:Date; b=gItmmedC6mLhrnC9ze3XB9A7IK2nTkFxqZcqPdLAS9w9TVY8oHy/hj4VsZElhUfVVARx9aXmiDO44I2rXGmu0p8CugbeurawNMkFJw7BP9sPsN5DYJ8KjcJ25XBeD7UMOfsXNxptNL8yeblAXgBqjvFBKF2h7+IM5f+zzl/h5Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2AEAZjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2AEAZjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE561C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772809493;
	bh=fni6d56k99SEn+bXVLHJvTYvF1JbsLQFl58bLDbQKyU=;
	h=To:Subject:From:Date:From;
	b=Y2AEAZjLqvNim0YAN9Jpegk6HZ2FFXGx0+gGCXQksxO4ZADn1hSPe/rszLkzq8QUa
	 VmSfcTVxBIgAxmT31o1AKynyAtr4GfQECULRUtjQctoG2iCARN8ZHE7x2xjytj6gZa
	 igDlhET+0T+BlnLq2Vx0JBFb2NY0Fq3lJpUjDm/HDtpKHVJ8hZRFzbpRKIYOCT1aCv
	 OGf4Y9yv8OJR8qyFq2COUXNjbCLtDUHY2+f5pRsFKqsmLd225JqkCEmoZHadCjisvO
	 bHGqDw+C2EOX4VKhPcQJJASnYdbuiPvxi5gjqxAweqAdImA6S2RAuZe1LLJjt9DRmN
	 tbu6GjEeJrhQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984D2FCB608
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280949361.30290.17763160497216256204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a2864e84ff372aace28b47784dc7ef719152737b6a3378bef6add0a06dad31
Date: Fri, 06 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772809493
