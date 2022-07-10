Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BD3139A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 13:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657458412;
	h=To:Subject:From:Message-Id:Date;
	bh=ST2Sen+iqxUhdeaXYSw5fKM24sKs6gSiTALMIHoUZcw=;
	b=FrmRvR7VJOYZCpWYJojWh8emik1hCYsYFWfRNmxZJuM4Jo41lAahE1ZFTUb7Lt2m
	I1aGphJlWliHG1nnSkaE4Dj2Jbj/f8o6/rf/j07GweDWDXFD6+JJ2UXIpbrVeh4Vnaz
	pfX7OIr+TYGBnp4DAuC1WQTa5i295tS4Zb07Zg8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657458412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ST2Sen+iqxUhdeaXYSw5fKM24sKs6gSiTALMIHoUZcw=;
	b=QLo/EctECwvMMOkvv3gsiEyq5BSq2e/91kK1l3XLeYNIfH+LUifPQazS5HY6JvoB
	Ccwhj0w28nGOneJ8Nb03ijFw03DaU0INoZa+u5ye8OfljO+CrLGfWI5Oy9/vPxJBVHS
	5++AOscTxTZhS8ZjM4AStWi0wBQ7k6zEwwtZK9eo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8384ae3-a3eb35b5-7468-4b33-8f13-713bef4eeaba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bfd60489f0ad73368d33d28c3c32d478b9b0ab7e5b4a3d565c55b05f1915df7
Date: Sun, 10 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657458412
