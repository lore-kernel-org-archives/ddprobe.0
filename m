Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669A32589
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661267452;
	h=To:Subject:From:Message-Id:Date;
	bh=nYqiX11bbUMYA2LBTSzk6/Vhf3gXanftkVBw9VshHc8=;
	b=b5q6dfXWIhjtD60iEiPP9sLg2j18ZbtDgiepxy38268XwuCHlgHZn2DvVDEeq4Lu
	gTzqXiWd5zGkZij0bn/rLPq5g/ULjZ9LJcruodrQ6ARxfD71xMjsoAvHQfyfJ30s110
	vHYv7CA8owzbRMpQXgdwXyjzdMU0DY5ImoXw1yI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661267452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nYqiX11bbUMYA2LBTSzk6/Vhf3gXanftkVBw9VshHc8=;
	b=buTYnQ1nE0bodu7kmF9h8kU7ZK1JZC/7yNzhFH/EN/v2nBWcUqieQlARgHPx/ho+
	QnMdDN9HU4Dvt/tSlf2moppPnl4AcHhzf/sLAvqNlyuxbPCu9/L2qaEBIYibniJycHL
	Yop88A1RBOXxogmHRgfUr/ngK8HDp8Y7ddwS2cN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb41a2ec-37b90fb0-217d-4010-b49c-d05e3392d903-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03073319335b0b6c8c9a7c9a512e0b0aa1c48e56ce7165435c86765a3eaf663e
Date: Tue, 23 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661267452
