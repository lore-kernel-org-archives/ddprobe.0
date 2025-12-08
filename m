Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E79A2D63E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765205574; cv=none; b=SDeViRFKYKgNmO0p0bYteM08WMPqUe59Fy8bpmEJA0nzC7rsbOYXPJwW/oiTyRe7y20DiyfSgSLRCbJBXU3U9vx5M8zMULFh1fWHJUQiNGoDhVwQbyfIuXpoQpQvJAB4UlvjPXX2SfTRXeFYADKvApxLxp8TeEkpfopJlrb4IH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765205574; c=relaxed/simple;
	bh=nDuNgC/4XK21pffoi9pMejWNutJJIHPe1/YoeVi7LIU=;
	h=To:Subject:From:Message-Id:Date; b=SqUGqT8UxZtocEWSZkCs7vfPjx6+doRybZ0U4R2DRiFkHnPhUtfj5wmdLPEd5b9xbwXVzIsGKD7KNJhrgJovBYnCV0F5KZcxEloELDGSxkmlOrgkVcjXAVYJXlSJORA0X5MgOQfpxtOyX1hsHxTTcW5U7iTkL03QHyIWkp/5Plg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvWQw+Pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvWQw+Pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC93C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765205573;
	bh=nDuNgC/4XK21pffoi9pMejWNutJJIHPe1/YoeVi7LIU=;
	h=To:Subject:From:Date:From;
	b=rvWQw+PpmcyOw6mJHnbfNP36gKLQ7wFODMKmBNUXernjgRsbdAlhLLIhE9uIP+CDX
	 AwLeX9Rp5yamr6yxO0k8Vb40w3X7Ck/f2MIA+SvSTVjnGCPlpV1FcjsRfVMqH0JS/9
	 vY8PCn/Tp5mwnlrwwdZhTNJt6curKSb2moeRQsxmhiHJggv+YvBMPyZUxCF7OoKAjn
	 2Tpls9T1yBi1b0ZaFuZZbsicpIdKa4yTTbrvqYplY/2akhsZBDB5JStLkkvPvpkpht
	 OoWBHEIPhDqfpTH5KBPi9hNXh5kOAtRuY7nEH2vff6GSHfcKUh21p6I8ha9oAobG7z
	 8csddAe41812w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9946FD3B7F2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520557359.19405.4962192269976555640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebfda55ce65497a1504883a569ef1485548f7f3a2912ac8e86a719700287eb4
Date: Mon, 08 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765205573
