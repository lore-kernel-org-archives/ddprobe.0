Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B53F2100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 07:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652425199;
	h=To:Subject:From:Message-Id:Date;
	bh=V1JYf1/AXpHcbiR9yaRc5NokOUtpzKgE+AGgmlT/UsA=;
	b=O1VzzERIpBOJxSSYUneoh7ueId4LOn6ypQInq+1o2cBMSnlb8KWvL7YTp//TQMhs
	kUraGBhcVyfo+fgo2tW8iO11OCyxKz6/+1phs6qbMXrUNWXpCVdTAMyOXO4T90w/Mvj
	31w+AEyAjNJdW45EecLUTLoUQQrAVrRAoYQTUuw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652425199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V1JYf1/AXpHcbiR9yaRc5NokOUtpzKgE+AGgmlT/UsA=;
	b=EZZECojTPE3ddn0F6tdnJijekhhiB9aFSCjsEwAqDH5aZZtRNcs6vN8kRuloeWac
	PUOlHGZyhnxxZb56AXncUPFxa/Xd8oPSGCPGnM1QUL8EpFzhvvjakepuK2LgdIIPRDB
	8pzOwmC/u/+6NnT8Y15EuD8V3M1/D5e7aFwIwO4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc378ecb-64b7ea86-744c-4f9a-ba50-20d92c6304a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a333ca9053c21939e6f0f87370b272ea99379c44ef6a771f96bf1233ae0277ca
Date: Fri, 13 May 2022 06:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652425199
