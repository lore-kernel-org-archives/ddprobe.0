Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A88D7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 23:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646005884;
	h=To:Subject:From:Message-Id:Date;
	bh=XRK8c2jwKawwibHBunxahlEl9YynPJqsd5agvQ93YH8=;
	b=hDfB8CBK71Iu1y9AF3R7pVVw5GXu7q/LGxGeXXvxGQ/l6W0gslvZyKv6LnWgruGx
	PVNyFCVJycJf3NOcCN9FcutMVoiQdRiGKYJhv5CLGubr/2elaD8D8Br0bIUcu8pC8NX
	+m1v/IgDfdTFiVWRp6GhE0lM+agyEGWMIjZebvGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646005884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XRK8c2jwKawwibHBunxahlEl9YynPJqsd5agvQ93YH8=;
	b=QzAG8U/vJt3Uyc+IMygsYFugEwnyM69RCqzUbFXoknJwKOd/5XKxv+/RAik+61MR
	v1C0mae4ZaZKwiZhS4mT2/elBrQd3EWpdrtZHUijVGpxiDIBD/7z2sfDILtti1Z6Gxo
	i0q9b0dA3WfCPpHsA8jEvgEWYYfzxwzSeBLLw5mY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d98974f-3a72aca9-780f-4c98-9d5b-d1f8097e1a3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dc8ed487a69c6677a38f4852657b41e7be4ff26d0eb62f3a0d11b42dd766ba4
Date: Sun, 27 Feb 2022 23:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646005884
