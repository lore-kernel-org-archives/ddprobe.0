Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F7E1C32
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656745012;
	h=To:Subject:From:Message-Id:Date;
	bh=Eu3RtuZ3yaqPb6pp0daFKJ3mPU8o8lhjl13MpkyAO0E=;
	b=bbNayUIO1y1bqAq4mV9Uk4oKP0qO0fH1/BH54ayZ7umAIZ5kLmCx4YeKkTExty1t
	cU+64XfgoL0BmFkbHyki88Wu412jGXjfnAXdek45BrRZGNPTm5gnTmw0Ipf3Vx8ZCvn
	F8iLANgi1uDF5TAnrR9XEAg2i5LbNYTBBS0WXPgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656745012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Eu3RtuZ3yaqPb6pp0daFKJ3mPU8o8lhjl13MpkyAO0E=;
	b=eJZ3IfoC+nxZ81lIl04uwtJOz2B/AiBJHkTqzrKP/33KhwiRrCnKQoWgfXySQ9iH
	XYizI6I/xTUFCkvTQRnRDBLpSLRqwb9OAdF1ikubiYNZOndzj487C73n3Ki81PdjkbY
	6EVz1yPZ0YZcFlwD63y+EbQCkv+rU0JibNWTKo+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bdb2ac4c-f0492065-b5b5-421a-a132-246778a5a8a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1cca4840297f1fa1c5d984c9fa7a92b90fd7804f797c06b8f6ebdddf166a269
Date: Sat, 2 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656745012
