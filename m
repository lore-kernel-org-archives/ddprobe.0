Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D00118D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646930785;
	h=To:Subject:From:Message-Id:Date;
	bh=2xaBM9hGpCUuah0qjaxD6SWnkknedtJCQC/27J38JUs=;
	b=UGlpO4lcxtVCWqp/PeNFZdqsfbu5kGgAZBJ5+PDB2plHek4TDXFlyHu78TKAcCcX
	gOJv4VoHKJ7WLHxd8CPGoVcBv3S6ppCWsDa9DtL/3hBcCEcKG7ut4b2DIUFoMb/8x6x
	+xp3NOtw7/UQOWcYw7BDlEVxuEl18u+8g9qNAP58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646930785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2xaBM9hGpCUuah0qjaxD6SWnkknedtJCQC/27J38JUs=;
	b=VgDxQqv3OvY1lS7+tPbXfiEWswtqt4QavA8s0mvXJSC1IxkUMlp+EgP8n8922Xfz
	5sBSXVHm2inpyyMfIunfx7hsqlhianlx5kuCMXCOFxrKth+CIFX5dwgUhJyNBZWtPSU
	wpHK81Gd4hc2fK7mIPGeDIg+tbLcimGvo7Y7FPsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74b9722c-a4e00881-3839-449f-afbb-ef6cb66d5830-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec9cd520064afd9f8477eabe6d89d04a14562de9a48737b0d7a87c2f08f31f0d
Date: Thu, 10 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646930784
