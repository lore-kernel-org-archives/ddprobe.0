Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9F5469B
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657571212;
	h=To:Subject:From:Message-Id:Date;
	bh=cesNBzZtCGUq7KYmmRG/JT/NcAYinX+Tz375BXGVqs0=;
	b=ZT40jUJvOkGW91JN/q96/5cmPD8FE5Iihx97gLWVaXD5M233MkcynOMwv692h1Hi
	+LZtQ1nybXjSuP68mfk99oQ3Hz8FPAvfZnwWSoDPzyJ6kQGB3Ye5uscH1hqF3d5mYk4
	yKhZYLi2MCLhCuuDjbO3+v0jnUHNnbeiNJyGB0oE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657571212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cesNBzZtCGUq7KYmmRG/JT/NcAYinX+Tz375BXGVqs0=;
	b=Ax6MW7E8L8FsGcpVJlQQxgD6gDM5xUFEwBS8F+Mjf0VKDuK/ZJ4iYfd3hrragvDJ
	KS+vAL9Qvx2ChwjqiFYGDOs8GQuLvzphinXzEMAGQySiyj0u1Gtbgdmy19ML0IGCBIS
	uPeHcfdFdcZK4XgBaiFS8LT7iItaf+EFxToRvH+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eef17c23-d9b5e7c5-0972-4925-bd88-633db51469cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22a116bf9797c61800fd4b01107f16c2615d2f519278489d9c4125b16a8179b5
Date: Mon, 11 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657571212
