Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C7C7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 11:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648207498;
	h=To:Subject:From:Message-Id:Date;
	bh=EMKG83/41VvLaQrQlZz2vN8fcu5ZOzTyOKeW3b/iW0A=;
	b=ZabH+EdNerChmgiwruiNjOliGpj+Z1D1BT8qcDJB3S2v7/l1m/0e4OCXXsEA6jD1
	mnNZc2nlth352Bw0yyoVeJaKWvGq7jsvJ3GC72HWTeqY8MA9rIlqm9GKjSzKkDRSuzQ
	Y7gND6htv8rvWKYDR7J3B3Qh5uCdQxI1/4dVCwhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648207498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EMKG83/41VvLaQrQlZz2vN8fcu5ZOzTyOKeW3b/iW0A=;
	b=heTpeBPGQeoXeuM04RGXJJbImyY4BHQwmowLsGa4rriGWktIM5/Shgi2cL1Vr3t8
	9L7MqPvxT9oW7DYBrrw+nn/DZT8UfCYwSVq+k8HA9RtidUrJStqOUXLXuJ3moXO3Ykx
	n0sNKB+oil8S/GqI8SS9aJsPzwY9NNrdZUujDT8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc0d28c2b-83a9ec53-e52f-49a1-b20e-2f576b7ccae3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f60f3a027e6e235c543f152bc3de79152ffbe983f4bc65537d3f52f63bcc13ec
Date: Fri, 25 Mar 2022 11:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648207498
