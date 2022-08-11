Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB4F33C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660231852;
	h=To:Subject:From:Message-Id:Date;
	bh=3S+WNYnkYT60XeQVF38Ul5EsGE8EFUaw2yo9FqbPmWQ=;
	b=VbLXImYgRfrzyar1zrK2FJh2gBlqB33eY6TX72HP6kmS6iONjGV1SA1CEnX3ShBm
	TllWGTFFwKUPVJYrEHncVlilG1kao1LbwnlbctVHtT+DUV5qAUdeetfTXmExD9Gkj3L
	5bROnyN6e5Ayg6SIVeS3eVm4y31WMJe+lxiDzvac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660231852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3S+WNYnkYT60XeQVF38Ul5EsGE8EFUaw2yo9FqbPmWQ=;
	b=Uyp/FFiuasjZtxBIH4orEfgtX6jPDeST2hsiX/QtcLD9XYJuwx9hov7y+8oVpzMQ
	sNRCubQQrzusGlf3QUbJJJ8F2x+DN/J0xUcLlmSyswFgCPYzlzNux3zRhjDlmFcrPDC
	TRckEiRu8HAlghfVYd6dtrQhCp3H6C390ktaUGfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d87a261-e1bed4a7-a3d2-4fa1-ba07-00eb8d0955e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7ce5a25b1ef93a5dd461cdc4f3a17c943ba99ad21d83f96e3853943de38792d
Date: Thu, 11 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660231852
