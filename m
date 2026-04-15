Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C662D8378
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776274654; cv=none; b=HTIIuyXkHOok+tpzGdSYdnwx4n0RA8gmXE4DaxIAEWsBk6wf6c9aRUYw/GWgeqTunGPqMUrmvo0p+HRRdUdgSyMiw93nXpw4kGjbXYHeI1PPvspa56BgV0o9lV9pAlprB03CPspmjYXAqKxgrNt7atYYgARed8FGVD97h6iiaLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776274654; c=relaxed/simple;
	bh=aFUBKCx+mPa8uxMIXiwD+mDtCIr5JeU/dvU09uNf0ho=;
	h=To:Subject:From:Message-Id:Date; b=fv2qlZ5FPpuRADj7hrDc91dlcLl997IzbcWXhPOUtp5HpEbnOsE4C2gglu4jQoE9Oos51M/qXQyh2fSPhURZWcU/FVYCpBY7CvpcCOXjsCPqWML8mDJ3wLX6vW7NX81Op/0BFcfSeqf7wppRdveq3c+JEJbhZE+IrCXobmCUXag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q//Dn9U+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q//Dn9U+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC7BC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776274653;
	bh=aFUBKCx+mPa8uxMIXiwD+mDtCIr5JeU/dvU09uNf0ho=;
	h=To:Subject:From:Date:From;
	b=q//Dn9U+4NK8cAeBtMEHUm2UMfQWKm8aQqhtNW/bnSeai7IoCppHcqfbtjNwFEawr
	 BE27BumIDw0YsiV08bYwlE6WMjWZ2i8INIXrpkz7e5M3JPbDm4oFCbXppp+gG9KSBk
	 PnGPk/MqGP0++35b67EeyKtTbN8ITUvnx3kej0mHYtbxwO8pI5EGSJrpjT8uZG0/gl
	 3KNhyHF4RZAdpF4Uv0Lgn1UNojBdRW4WdmcAwkMLqNIPNlb6jXLtoTgzcRjAQjWfd4
	 HedIp/HZd1yjSFAhrWdE+swO4EECNUAqEw8XL5L1qtm7hiyHxYrNI9jgnJTQZkPAFR
	 /eFhBs2D/3hDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB79F42100
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627465368.19137.15380243926806096230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8506c1f5677e2e52946cec9c369537b2238f9b6411587548c1ff315ff879b5
Date: Wed, 15 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776274653
