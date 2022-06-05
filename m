Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE31E10F2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 00:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654387679;
	h=To:Subject:From:Message-Id:Date;
	bh=4vf1bmo2kJPlbj7CMXbxBXhKPQ1laW770BdI+/NiBno=;
	b=JvNZdcrGwa1CjSSLe8dzoy57Zd3IoLsNv8Ro72Wphoqjgft9l+jf37BS1xTBIYvY
	7kzQ5Jj3xqV1k8E9ng8wb3Id4oMmk1xT8zfxFr7/7PFdTiWMSia4AMGJ5HJ2gPUfbkd
	fEttfYtjJd0Q6J6MfaXtz56IvcjoTzhAnlGOcIuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654387679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4vf1bmo2kJPlbj7CMXbxBXhKPQ1laW770BdI+/NiBno=;
	b=GLC96HGpn7FwcXsg3xMXkFGZ2DqWgB8IR05BeYOTI/zqkJF7xDyXU7jJgpwm5Igs
	qKRrIjC138lKB1pKAYeuskNgrRScnt3Juf74J3mMwD9NdjmNpJND3QSsW9izmFgpmoK
	jDBctkW0Vh6A0UkF2vjYSmavskl+/Enh0QtMk4W4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018131309ff3-bac7d2ee-4dcf-49ee-979a-b6a06c1c2014-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7576a3c16dd026743f88038cce6f821a3100c479acba5b7b2cd4bc8517f55d4a
Date: Sun, 5 Jun 2022 00:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654387679
