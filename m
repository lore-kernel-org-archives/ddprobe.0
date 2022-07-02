Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B3F2560
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 13:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656768412;
	h=To:Subject:From:Message-Id:Date;
	bh=tGm5WvGvjK+LGC6MsHOdMMERo6LrBU++cnEQdgmrseI=;
	b=MFUc8aQeyVtvcgzu0pn+IQtwfbokiqnqiLA1RYHEPOueJEn9FMjNpjUpE02r63zx
	fTa+HxVwwMsRR75Sm8ITFkYVYi8hd8i9GN5W0ON1TGfG8oh09GvpvolipOlL7KzOvU3
	ROLWCfbm23Dc3uP1p5IzGXlge2GyS3IHK/R+QqWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656768412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tGm5WvGvjK+LGC6MsHOdMMERo6LrBU++cnEQdgmrseI=;
	b=DXTBme/FSj0Q6iUOe4ce6a3TF2PDdRHkyBTqoyDCq0hwOROcErwGc+A1pjBM9BEm
	GcNZkgdFT6NoWb1zWsJdWkjkhXTu/X6uQV/CCpsulD7c0Nt2T7hwWFnwEo6dVlZbm2C
	SlLUlNhB5fri02O0rnizOs2SoVrCPSZjYrLFCWnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf17bad7-e85b0885-fd48-4911-984a-c159d5684a6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1e1fb699be08765a41964ab1d2570444341fd6b8cb3de5c92f04cf884a4b4a2
Date: Sat, 2 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656768412
