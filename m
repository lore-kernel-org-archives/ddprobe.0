Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2298D3237
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656515812;
	h=To:Subject:From:Message-Id:Date;
	bh=SJXllbQMuR3umu7/7SZqHjrq0ddlG/3XvBzEzV/mWgw=;
	b=X2PAhNn5lo+MUL1F9DuX5sftIbsFZQFIDsstKkSSw6GamuJ1m82CuXxi/Q5quILA
	erwwj7gxxvfD51Qo3Jy9znEpmgD1uEJeOWA0um3DVqj/4dS4JmpjZu2rHEa/fdPGc3B
	nGkRbuz9aZuHPGnplgk0Hce5k2eZCUIQaXAvRF1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656515812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJXllbQMuR3umu7/7SZqHjrq0ddlG/3XvBzEzV/mWgw=;
	b=HOglYkJ03nGxt1E4ktj6rshSaGZwyk/KBbnW9vvu/gmTQe8pADjIHNeSpDuMv2qo
	XHF0riQXsskuGt8AeDTeIMYfjVNplxhjuMFI8UXrJEqeEKru1VHKnTOOhQQHPte+edg
	GEHW24VDMQ/PNQKMnEMA+o97t28L5mVQyBnnc3yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0095bd9-dd02d1dc-492f-495d-86cb-b7ee22288ba6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6dc81b9bd2f11e89111519e79b9623134bcbc192a5b4bd0fc7c45c61e78ef6e
Date: Wed, 29 Jun 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656515812
