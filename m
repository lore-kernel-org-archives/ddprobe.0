Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1737B3FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656106612;
	h=To:Subject:From:Message-Id:Date;
	bh=8cs2FU2a8Un17UYNolVX85TDd3KfqB9Hl7BMcGc7ftc=;
	b=Nr+Kxvb7eF3HAxT6C8bWwPj53RXJW+OOk3Haal+5yNlDYPqMoFXPkEQMGIw8k2lF
	FgrpwkTH7V4fqYSc3iv1zRD3pvVuCEBGJEWn8IwatNwI/Xe6yNcLpvaaPaCmN1eSSi1
	V0LralJQrqToS9yCBJvWaHBEQD93NI1mbHXfKgHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656106612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8cs2FU2a8Un17UYNolVX85TDd3KfqB9Hl7BMcGc7ftc=;
	b=R24QjysjKs9Wj3oddoOj39cgZD91K9W1qV8vnv/NTgG3abUmeI3E3D3FTPRSyeuN
	1v77agOzAZDYQ/gRjjWVau953bAyfrG7NACoq6utMiozc4j2xHZ+LaSnI/nnowknajE
	KZkF6M/5WPjiQyM8V7FkY+vKsR62scd75M8ebKng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197a5767a-375d218c-410e-4136-85f2-9aa82f940107-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49c19aa004ee6ac7fa6b04c8de77903343742b9ab2fe19498e3cfc58e1c17603
Date: Fri, 24 Jun 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656106612
