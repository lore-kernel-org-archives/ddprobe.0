Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDABC3370F4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767615833; cv=none; b=hWuT8Am2YCpbuOos4/J1rGIcIeRVjU7yVN0YagC6w9rRSANkUPny7W3nyxH/bCE/oH1pQ1IfAdPiOmJb9gU9sld9GFdeV/XFIViD381yurJh0Efbw8vHf3xOmdm7OwCFzwjmRhN5UbldRs61plJD+xl6g+Zb1PT03tKEBZ306PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767615833; c=relaxed/simple;
	bh=mQvGmVy4sb5kAIQg1342giMZxbJzZHwNHTMGuGDtPMk=;
	h=To:Subject:From:Message-Id:Date; b=oCUdjLpTLIg7/Za5B2eRr2nxsQ2v2y+1H1kbhp8/mPNMJPRXaQlOnUpYhxCq7xX/T5EHxV+a4yLw6MYmDmb2nqeQFdHh2xIw5dQev1PPCfRaGU+J7uxqfJ6dJHfcuTXE1/izhhCmhuf2JoV/27Y5WI6gTaMrbGrEYNXwthIq+VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+zJkZ9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+zJkZ9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E6C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767615833;
	bh=mQvGmVy4sb5kAIQg1342giMZxbJzZHwNHTMGuGDtPMk=;
	h=To:Subject:From:Date:From;
	b=p+zJkZ9ST3YBEcflmjJZSSRmpbNX21Gsqyg5cTGvvXIr4AqPeGI+j78Lwd8Uzg/rp
	 C3sJT5Sybne0biacqCBJ0CQFIourg3nW4Xb8jFH9zcgelcJgumwA742aatORtF5nzV
	 e2C7MlCoPQ9ZcLYI8TOZkNY56rMjibhRlFAC7KHOEcFGkRHpcP0zCxhoTy3ETH+drM
	 girGbqX4q64DSLpcnOZBxKh1mK7BzKmXF7ZRFuNgLpVziN3l1zvftgfscifVXBtuO5
	 RUepl742TnYYxwlTTELADb1iqahkTg6dgFlCPbq8I/syqW+adi7stJGzv8NLlKSHR9
	 X8sL7QMfJUuZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF14C79F8A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176761583358.29124.8704157791517582957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4469d6ff12f89d3cf460a1bfd357a536b1766888277638bf7c570dc1250145b8
Date: Mon, 05 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767615833
