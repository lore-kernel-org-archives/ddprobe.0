Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FC27E0E8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751719794; cv=none; b=nWnrAnVndXeVifd/SHdziS8kRt8Mr7ju1pn99C7csRn4N2/9bwYzNgKf5GxzZWMtO8TanX7PY5N5IQM0+VPWlb5xNpgAhu31FdDxY0Rw/Vq0nTUDZgtc/I8+Dm0pzEJPYOeZmbCxN9wECY3OP+vBbFargJ+DueQZVq9FTxf+tgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751719794; c=relaxed/simple;
	bh=Uagdwn+wDecS40v+R6raKEw+gbNCYKSgoz1iaOrQFYI=;
	h=To:Subject:From:Message-Id:Date; b=bKek/GYsVLDojfbkrQ7KHotFf4eig68eQe6k3PQQr7rDExT1nmA///Tewr9Qr7clgMUZ68vLmXSir+AzhaDtDYOURUk0EpqOoYdAkWpkGEAppTh/2BBVo+gohy+fqfIryL/fLjKV1pYMUJNgN1rONtKCHeUcSbUC4H2FvYq3sOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ecu10z2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ecu10z2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83EBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751719793;
	bh=Uagdwn+wDecS40v+R6raKEw+gbNCYKSgoz1iaOrQFYI=;
	h=To:Subject:From:Date:From;
	b=Ecu10z2aug/amH6f3Qn1i+Fvm6QN2VSKai39YEh8QnatUOUNj7tKXft9mS7pqdecH
	 N/aGxFTdFKQPpgkcy15WxYk/DM1p+Tr2VTClAZglk9Eq+dTsHGmibFI4JyLGp0OKYM
	 aSrUaD15QNsC6lhFjUkbHHrOepCF6+DcdLJ27FDf68FLGjVCe5X+DeaXNRPJGD4NPj
	 A5Xv3IbQuiA7z3ixq6n6p3yChBdlOQ4/wa+oRa7Wts4X8EQxB50AJCmqOedkOQNjpd
	 fefXHHAnCPSANYA1I1Vs9bXf0qAhUNIc0zxB7pXPQHeoFZ6+whQ1LSjIwcmadyuduG
	 KHh9uquKwUwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955CDC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171979357.29816.7838818785912199596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6fdb76fc85721feb795f7b25aa702b1bb641718b02895e31ebfbf8ea2f49223
Date: Sat, 05 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751719793
