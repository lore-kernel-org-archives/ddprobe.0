Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386087F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 09:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652001238;
	h=To:Subject:From:Message-Id:Date;
	bh=JMYK4d/wraf/LOWWXtUbwzOY5xhzgPIK2t6+KTpiSC0=;
	b=HTUb7sNWiowh7/8nrvXdI3Rh9jWaFxWqcA05OVqsSMzXOBTkMKjVKUhzVcdJwKk5
	VKF2nh6LOMYu+TQSsjdKrkmHrs7GH7uIWz8RKtr5h9RW0G5bb/lyUjZDTKuSvZNtBvk
	8Ci9YNB5H06YqlOB9Kr0DWte4e69WlLSP/tMAYTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652001238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JMYK4d/wraf/LOWWXtUbwzOY5xhzgPIK2t6+KTpiSC0=;
	b=IyKfstv0UW93lKjT2nTguYVr/yRynvEVCVn+gSlIIgtwdWVVZB8hCKUb2ng3asCR
	IvoMCvxEabDspWKlif0c4hLllEka3rc29Gios1EOO9ZBbocnLtXjr2PW6JgfGxIEik0
	qjbH4XZm+Ft5yzolWGb3xaP+pgj1b9zgrpfxd+DE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2f26d17-ac9dba6f-3dfb-4884-b9f7-34c3f07a0b11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ebb12caf71bb0408b3c7e6ebe38aa7a380c7e366ee569da23cab3f95a830d33
Date: Sun, 8 May 2022 09:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652001238
