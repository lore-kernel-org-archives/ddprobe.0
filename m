Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5848143D50C
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789912234; cv=none; b=pvK9KdXQYW4Xq5+ahRygj4YGZSZYE580ND2XH69qMgxSNW+OQJDyvxXEqKbZJ+7a8xWf8fA/XLmU1HDqosIldAnko0j5oatA3Zv1VEzM2quk5Seeg5NWTwlGi1G5ZGpud3G+3HldosUZt+ckFuiePzhDFuVl/5QgEQ3Uu/d9Chw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789912234; c=relaxed/simple;
	bh=aXz9YIA7teV+mNNYUGA51C9QwM3SKVm1DcFstyLEp6U=;
	h=To:Subject:From:Message-Id:Date; b=Su6EwAh8OUoCR2JOMgWkcLz1aXAvQNwGGIqjUtibfv/6yIo4QTJS/cd+aSp3p0YCCyOBWtpg4kE4TqZ/fqmQ1Fe6TDji8fgCNwoy2fv9xSCS0y2H3eAWmEC0Y2pB4n6xMDfPH90Bt5TeBnLnPuZQenuXmHbSpyTtMa8E4WWPe4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdQsb4gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdQsb4gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58A9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789912233;
	bh=aXz9YIA7teV+mNNYUGA51C9QwM3SKVm1DcFstyLEp6U=;
	h=To:Subject:From:Date:From;
	b=XdQsb4gni9cZYZn6wAYq/Nh/fEemBg8XZZdEf0DqtEHJp/hwvxjiy47cG3YIDKD+D
	 RMA9Ma0atv89PgcALczba1HL/jmEi/i/XQNdU+1g/nLKZFSSkTMA4GZ2mX8PISHMW7
	 pSu9E/m6ufbuFfpagjrz+3tI0GPjW6/c8q8s1NIyeEpnJO80FAQ+sGl1sWTHGVYruQ
	 bzKeFOJPZLRixmZJzXownYZ1GI5QTcqS70SeM2iY3VsIGCBiwBozydGdR/VFR1k0qY
	 +/NXeUPEZncrjKgTfMJRJH405pRtsjwqQad7xpq2q+gjs5CXwkCOenjMJmq0+pmYAt
	 F62umJYdYljJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC547C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991223369.27948.9520536397443935632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5874e844276f0675e7109b957ba319c1966981d440dc5a4f4778b29e3baa067d
Date: Sun, 20 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789912233
