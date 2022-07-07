Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3983428ED
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657228612;
	h=To:Subject:From:Message-Id:Date;
	bh=sHGz6NuOc/FQllKCumN7YyHzFARY9qYTrLVZq63mwuE=;
	b=ljhVrCCtV5nJWjjcBRqe38aZYYgNPoyDWngDxO2OIFSlIk8JGBgf74taW2dr0MBg
	LaSK/LZBTzMtuG7Z5+Ga0BdT2vVoZKWnSh1oZPOx3/ggIn8Q0Z+JWpX18zxkf+ZTZy+
	2AThmxt3tc7RBlIVgUHam8vMjHEQCAABBpilaaj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657228612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sHGz6NuOc/FQllKCumN7YyHzFARY9qYTrLVZq63mwuE=;
	b=g4mcCjVn1wkPSmBcIiDogrPf47mh9ru54TR5XAhsNLFVKA/DGpFE2FPNltBbdUDD
	4eOWipvO4xyvdOMGIhiWryAfgCoyrtl/mff6iUfFLYL/UB1T/j2PiWvFhTPI6N9+n30
	OwYYjseNEMs/0GVrojz5YRVCMmvVmcRPOxHcxfOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da85d2e6-fdd16645-a06c-4644-bf6b-f7f6ae6426fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cbdf223063a56346570cfa22ce9e48dc9d19da827e30757d2922825bbce78c4
Date: Thu, 7 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657228612
