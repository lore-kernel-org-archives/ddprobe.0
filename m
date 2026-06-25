Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D7B1E32A2
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782376054; cv=none; b=I4LoGQk63gOGLqBXNvhzg+Rg8z+yEpdlyO5ZfL6d/P7A9QZcSvXuPCWVD2sXPPcLOj0UxQ8DnBsihg+l/Pro/iqN2gp1q7rU9YcRmdlesSPWOx73xnlnw4Bk+HofK+jBcJQyvQ6XBAgEWEQO0i9ksDP2lyWJLP3BG83tGU7KAOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782376054; c=relaxed/simple;
	bh=zcs7zyyX1BQHYRO2wWF/m26erJvZMPIGDI08J3OPQnY=;
	h=To:Subject:From:Message-Id:Date; b=UMvn6q1utDVKPBWJBHiJjnIs0CG3va7idM4tvn9EKgJsSFiN2GIxaMrzMpzC9I/TLvtUYw3DSC4AjVIxjzt671zWOZ9caNK5tQ9rTYPKahYDFHy8XNY4BRrJ3bPnWvWYxrCt/inrebeV1N8irUIy7l8LaWtluYSdSYcY4oxASlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPOXb0Pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPOXb0Pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AABC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782376053;
	bh=zcs7zyyX1BQHYRO2wWF/m26erJvZMPIGDI08J3OPQnY=;
	h=To:Subject:From:Date:From;
	b=GPOXb0PqjoMkmMqBkuJXCp+qAx6o0geMfmczbr0o/m6+9WB3C7Q9Wl9XasI7pmswm
	 /0IgbHOXxe45MqqIYxL7gGw5TkC8OOIRIzEgnNNQcdpBG/tl4Wj13u3WtxrTvqKxLE
	 ttXqk/dW/OcZkfL1Pj43EF21NkRItXpmfSZ9wJnjJnph5/jp03BXXiQdUz18+LmYmI
	 zcL4aCK5mAtYDLcopct6Wu2Ud1fFZq6K1CCKEl/4cl0O3rYClyYzvub/g5IbdNeri9
	 C0aUac2QdWbXXq9pPVahyAh0kpajvygr5UMeJ1OqAd3SFaEc4txn09lI5QQBeVnSUV
	 6hgmkJ4ZH/KSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD253CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237605369.23375.10096069101671392494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499067d420bac841aeab879d9e22fb537342a6aea2571757f618362286261640
Date: Thu, 25 Jun 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782376053
