Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714816E611
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716888863; cv=none; b=rYpAqG5VXDg0iU4XI2DBEgnjtMIt7AtTE/WzvISJ9PoTXoqYFEcIKGO5q25qY0/e0MMJC+SKwJcgEtTbz+OX5RzO5MHJ18C5YF0vCq2IIkcxaI5Xdaes7DNRoE7QFcU3cXle/xhj4Strc20i3veZzAP7KHXLD0UFyWlTi7izxng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716888863; c=relaxed/simple;
	bh=+ubI6NNVqDpgEjqY6LPQhKlKyJ9Bjg1Cbon1H5QnGmA=;
	h=To:Subject:From:Message-Id:Date; b=eZMkzJhDnI5LIK7FwC/Q6DA97onwv7qv0d/pjbcI2kF1yqEEbyqYz7k2F2U+U7gxbOZX6AGkdQy43zUT9O+oo/aNK06fpnayRDfZXIsFlwoK+kP5ybJ/35Zy3Bazc16OP7T695aehGPfi107Pg0wDWKAZ/YNd66Krppfqe57AoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXhI0wT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXhI0wT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D925BC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716888862;
	bh=+ubI6NNVqDpgEjqY6LPQhKlKyJ9Bjg1Cbon1H5QnGmA=;
	h=To:Subject:From:Date:From;
	b=oXhI0wT6kkn8oGgY80tGWppdAD2uQFvlHtF4mR5jumtknQfn9YAREZ+QvLzYfglRn
	 bSsQJgkk+4X7PqXL/pwcKbmUbEWOAuMThTxU9EP2vfBYNT60cnvLrMFxHdwlAwqQjt
	 NR5EZde1AmjcTJDPzhG+XrhovJg1OWR4fWvd0Oi1Z/GW+TAWiJKG/59QPi+r5xvQid
	 0LSMeLDvMk9E3iYgeG06JfBlVw+kWwM6JcOzbeAiP83KgHjTOAJeCNTQmEpUNUDmlA
	 eCVVQmYnmn2ArPJKzhXqGkNkOiY4Yf8qdYJynIeOTPdHYTumbXekCSbAANeizaeyVd
	 ZGxlZGbbL4+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EC6C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688886278.27790.8883042222816438025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24af0ffd3260e98d6745912b5cd75197ae0184a41498baf7a0340d4e9daebd8b
Date: Tue, 28 May 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716888862
