Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ED4C2F46
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 22:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648678018;
	h=To:Subject:From:Message-Id:Date;
	bh=TP98mjKQP6mANfggMb8xe8CwNiay+Vvq8Bjy6jzh048=;
	b=L5PRht/yTbGSkMk+93QHZkQgQ1KCKI4bv6AgUumsmhjVvZTyXDmXuinOItkVz4Au
	72ho5ryvyaxTUbNl+JV9wQbNPOi26IUFWBXuiS0g4X3MhpfMAur/q9kBgju+L+BBM0i
	WjyDplkjFCdTg5s05VTfSqNLRbokx3cRsyE9NyjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648678018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TP98mjKQP6mANfggMb8xe8CwNiay+Vvq8Bjy6jzh048=;
	b=gwUWNZiMJDxdBlAXoNpfocNl9tsOqbrXAr22JwG3kq8m2MB5E8gGveSENCfx8fvp
	cvryy2QvNzqUyhhWd7TbTkecBuFY0SWqz7iGHGUDootB89IUu34Cnj3QVSq6pa1HA93
	9vKsOr7DMi4AD/JiRWhgFs8CWl5fugmZyu6feJ44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdcde1d0e-ea1685c3-f841-4f6a-872a-1fb57448074d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7126a36d18d2218e01cab059dcacc85df419b28461698e7b519821367039f54
Date: Wed, 30 Mar 2022 22:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648678018
