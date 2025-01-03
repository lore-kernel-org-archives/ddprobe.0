Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3447B1FBCAD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735922754; cv=none; b=YpsgJ2+SgDpW0LGgWDE/pJWQAymRfbMchDj/FwCD2O+p7Psjd1L+NfN1NaCcgIMs6q9DGrfQsYmZJVsO374vHWWg3LeNEFDIy5cj7G85QPqsP/txkx0cI93WbWNhCSAM5I92AFOA4QM2Gvt94vEoZm08VtlJQLYlrVIZqLGch6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735922754; c=relaxed/simple;
	bh=oew0/6ToeiM0Evd87VzavW+3XiEgB8m0U6SvjijPTwA=;
	h=To:Subject:From:Message-Id:Date; b=sP8+rkV3eQXRKt1rN18V4o5tqBwau1kseqwtHc9UCgVdtcqY5iOsnwyzPf0bHIM1O60prbpo7Opqe1c/b4rd7Oucxgu5nq5hSsHh33JtJCHPb/RM2faazuPXDtVwmDC84JvCEZKXG5gy7g8Gt8vfoCpqDGq7I9MKo3vuUI1PTLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9dGhDC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9dGhDC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35DBC4CED7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735922753;
	bh=oew0/6ToeiM0Evd87VzavW+3XiEgB8m0U6SvjijPTwA=;
	h=To:Subject:From:Date:From;
	b=G9dGhDC//+XQpdNkEFWVmPMuZ42gmtcG2Lc233wsD1sJUJ3C7S4oPRjBEPrgOFRKi
	 luffpoTTkBS6z2RkcxQ7vQZRJ2Uo5E3DhNUxlgaNMsYsNVXoC6FhLpStutKPaNjB2H
	 WmHjCxmV06KMli3bvrxH1+PD2GUWiipkNznbyzjJ4+s1IU1xHeAuDvjT3QPPxavFQr
	 FU7XRS3YsWNWe3wiDphq9u36SYIUjV3jr5eoJASpvXTcQVNTL7OPGjkZZwZI6Mul8e
	 lE19dv5v1J5i2RGIWy1P/slypQ08tF8qWd/8OdLacvwxkC6WZbtx4IJpXza8gFOf1V
	 MKUS9WXQdkjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5ACE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592275362.9431.5987009249819602939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d00d94e1e368e64da2ff23f94d9916f584b225382e1e6af4b95b08418d05f42
Date: Fri, 03 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735922753
