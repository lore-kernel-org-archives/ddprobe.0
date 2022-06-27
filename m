Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2641517FE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656298012;
	h=To:Subject:From:Message-Id:Date;
	bh=gATOGv6RGWmgyAYLEGxuKcCDoRRpMc5RwcveNx83ffw=;
	b=Pjua7N8Chm2g7nyXHx9W9UkhWIIr/kuOecOnL9mdJQ66TxMoyL1O1VFcugdNQk8i
	u7mQOL6OkTUtRAj9mn1sAH59ILECq91pogmlW2fn97IDXdAWoe0L5kl7h3NVRs/m60I
	8c2TNf2ZO0qU9nJ2Dxhr67MtBXbQ+fwE4dx8s0b0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656298012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gATOGv6RGWmgyAYLEGxuKcCDoRRpMc5RwcveNx83ffw=;
	b=MNoVyRVxx+8372xcdK94hQyMYR8tMiH4lzvNn6aT3f5z0jnsqOdYz1gnolst417h
	louYXL+TXTsakjt3bQcs7uUZulhJ8N6USOzhrcQHkkNVlKI4eM/qQXjHa8l+TlOWjTj
	o/TJ7zf01Md2wfzuUWk0gfe9jfpz3WEK2Qi21/VU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a30dfe7e-f1d0b211-a937-4ff2-b7a2-b73187b71242-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 502e415e8186efea1e240cb591b7b8994fa737ce5f1f65ac9607d46a1f832705
Date: Mon, 27 Jun 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656298012
