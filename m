Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BAB28E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 14:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651501378;
	h=To:Subject:From:Message-Id:Date;
	bh=XFdZgHE1fNNeaZ1xVEV7ktqSrXp5im+4SGaPzkpXmyw=;
	b=Sn016ASJ5dQFAjBL5p6ej+WqhbX/5Dv0NKRm16G0h2cA83N3QpKIT6nBxC4TL8HF
	PoTWd0+ebcr1Uf+94tfNQ4kFZWtF0AVQz5cl/NCNtlVI4+c5aZfcZXGb5eEmXQl4kh5
	SbFxqs78BSKXRPZQLG6NeqCymCuieeev7RHr/7O4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651501378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XFdZgHE1fNNeaZ1xVEV7ktqSrXp5im+4SGaPzkpXmyw=;
	b=A7jEj1OdzTyiItnbuIUmggqX5994yU3JmDiykcXF1mc0qCUhSt/s2zdn/1uz+1Ao
	pysCqKgouBweV5SEjOK97cTHd6ZsoMa4rPtWdiXJjgj8C8DOzWL/Ywnm28iXPlTGfX3
	NKhHvXwNf7g03zFH/3UGZZ+WkUgu+uqoe9NuLT3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018085272af0-e6a9df41-54ef-4949-ad1a-598986a232c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceb47cbe32aa23e4a8e5e45622064285bff2f99c41a328bb7462ad8847f3e4de
Date: Mon, 2 May 2022 14:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651501378
