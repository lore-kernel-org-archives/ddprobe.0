Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2756C2DAFA4
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759841994; cv=none; b=DiFL1gB8tWhckU5pN7Vedcyo7EHZ9UaoOJ9eZuqtHAZhWlPt71ShvI4Pb6XHX1Maq9F3dBLet5PDhxppE9Hlv6v6HwuVP2d+UYQa6PhQA9x993lnrtxfCVaP6FQZUBxoExc8wW6YSVXfN91jZ1I617k/xo2L9KEJ2qXvS9PCVN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759841994; c=relaxed/simple;
	bh=AM/XmdKrkzQP9Jp1dZHMJJQG3U8dq1XTBP3keQf2XZk=;
	h=To:Subject:From:Message-Id:Date; b=IfNr8Mnl7A1/BTfYK12YZET25eTeey/tu6pi7naR79j1w1OYAWp7U2L2UaaMIqdESOZaBaYfM0Bd4iGyQdaooj0Iuc/qIU+8HDShjiIl4HCWmLmRT/OdehwMpAjnKLtPFYKSI6WgpYJFSnDoyzw6h52DQ1soPmoH38oqwHo2Tlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKSp8Ugv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKSp8Ugv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1849C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759841993;
	bh=AM/XmdKrkzQP9Jp1dZHMJJQG3U8dq1XTBP3keQf2XZk=;
	h=To:Subject:From:Date:From;
	b=CKSp8UgvyMzBhnJI+Mu4tL+UjUXwfHdeMs03YvjGo9tiFnguM38748Kb2uvGQW+Mw
	 ido/kddYxIdm5CLNlgT+ivoZgrrLaspKLANBMQ63KQpv4MOOizxQnJGb3jNxoEZnmC
	 kUt31x+C9wwoaWA/FIjWpiCMVV40W3aozv/IiFRv3VweP2E8xbPlyVSNb6en4Ns7q5
	 tW7OnSE9mFgOY8PbJNjg1zzEyQqci2V07aSHxafxLDHqH/mndOst5+aRlNLYYyuAdc
	 FoYJMh+ys13UXEcSBqJPaJsI60/VBqVl78nusqn4TuBSJPLgo1+xy4U13+iJh7mEaQ
	 BSd/pFnoH16VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE37CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984199357.31944.14601235173570751798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a7054ff4aae62f1f92ddd4c50e6a4c53224c42b47efb992df9bd03ac4950e8
Date: Tue, 07 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759841993
