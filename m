Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7F24293
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647972385;
	h=To:Subject:From:Message-Id:Date;
	bh=PsI5CmoWhwDeieFiHlHfafG7HVpmeIVQOSuaprG5IUE=;
	b=Q4rYBigmKMXe7maHRgIWZOE8OkOEkjN7dinbWK/LMJH0fejP6DHPcbWIt+SK3FAa
	8ZjG4Ao1veeaC8NUyZgAO7UlzMbvKaREnr6Ecz8E6rbWfDNiTcDQLbjvtbhT9c7CDp4
	rOnLyAuWMkO5yzOX6EOHMOFlaT/Vyski6I+l8awk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647972385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PsI5CmoWhwDeieFiHlHfafG7HVpmeIVQOSuaprG5IUE=;
	b=QPD0GQ48FkEpw/+xFOIanh7+bfI7Dz1VZ839Grfwe05tgUQ2lZgQdXeBT8LoC7ll
	khf4t76QgwFKQkwSS7/HXD6bhTPgBYu35IAbRMnjoe/gyU6BBNiHXQZQzL3JQBZ0EmJ
	QCtuyNqGixgC0XgLFeKaH7ODv0dj6ffm6ErpbIF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2cefff1-bd5f0ab7-ccc9-442b-bfa9-26ebd7c8feeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf85bb91d6ab4417bad19504609f6243cce45f3e5215234d4a56885bced56093
Date: Tue, 22 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647972384
