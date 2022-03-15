Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6C41FB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647345984;
	h=To:Subject:From:Message-Id:Date;
	bh=JW/N/7CwzQ5wvur1Dkd2uuuOOxa3g2ixXAfUfX7uVaQ=;
	b=gGLwJNmMpkmXANZx0L/6aiP/T1ns1tNfmm8YRduQgoRmTfwhez0Gy46CNVGsXE/D
	g9T58zMTTVU04VivGrvcVCV4lgkQwHbGGrkUNPd3Np31ex2GucLzFwNd/XpgbjqcfrH
	hPMySClIbTvzmFyzIu3BvEsxEgLmdmE0zGHE2X4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647345984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JW/N/7CwzQ5wvur1Dkd2uuuOOxa3g2ixXAfUfX7uVaQ=;
	b=DUf5hRGEFiV5Nz6Bwy5+YuLeSjQOlWeyaOz304DxI8+I/oOnxiaUn1Yv0nrW0VNY
	hT+GHiIIXNapj2IwI0QvAXlZTnxoLw01fiYPR+ZwH1y4Z+QsXk12EuewBHDHic40tiz
	OLgE4J+e6p6Ne8g+IbXmxHTIwd8uhJEgzkGdTTzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d78e4c9-d84d4fe6-01d6-4762-b099-b55fa5996c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8429f3d60fd579dfd03f88c3fec02636db8619a85a0ad59295b082c208e402f3
Date: Tue, 15 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647345984
