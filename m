Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEB9346AF0
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770717834; cv=none; b=n65j2oRe4kXUS+xu+Nwk2fACHiQ4TfmMJGkJZ8ELTY6slKEFn0RKDon1SDy9sLPIyxyheyOoPo6oQI0LuFFOgxvRz2T8C3EJtVVyNpT29XzsCH4lrPNe4fr5F+mDPcfjozmuGbCsle56vOWZabM8HrptIb5DlGiTELfEktz5NtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770717834; c=relaxed/simple;
	bh=Q0mLBHTU6Ky/XL30ZBzwuiVHU33pPOKDT3yGvr7gg4o=;
	h=To:Subject:From:Message-Id:Date; b=kJvvUCR7xxebIqMJrlgL/boDR8vNfjTZ6eTxFleFpR8AwdS1qyJl48inesAI3OE14Z3wQjbTsw2g46pBavut2UJAG5QLr+qkXvt6+hhUniMoe5ldmbnWX4g+p+k7Uw4QKeyv2hX6j5JTIeHKp/LmKzV9kPsufiWbe1UdIWqw2iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=At0HUK+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="At0HUK+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02E76C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770717834;
	bh=Q0mLBHTU6Ky/XL30ZBzwuiVHU33pPOKDT3yGvr7gg4o=;
	h=To:Subject:From:Date:From;
	b=At0HUK+SD0OgOMJZwD1tPaJTlDX8Ln6VYxWfbZ7ZEKGNq22hxQbpx+XQdC1L5sRKZ
	 zD08FV/P4m13QvaJ8HQHuR3B87EvradysNJ18dJrQUT8a3RiXwHHUzWui56KR49yZk
	 Hd6AapV61K4I5r+NHxZjHXnbHiInkcatfyLnPZb69W71FIKLI4IINy+L327DzBDkST
	 f7ruhqMBEgPc8HGh3GLQQRFisEi4OcN6YOiRs7ZuaoQT/npKWqYSBnFRy9KdYlWYbj
	 PlKHN3NkJ8TDCbOaHu/r04Awqd06Ah0giUnhkf8SiCaPLk6obIE7Aq2cVP4WD6ab6i
	 ++MNompWCO+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB09EA3F30
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071783375.1796.9933612349772804616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbc172d64c658760f63550464433f7ae49c22c12458dfef989e2522600cd9a2
Date: Tue, 10 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770717833
