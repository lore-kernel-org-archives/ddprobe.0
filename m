Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C13F10EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657427212;
	h=To:Subject:From:Message-Id:Date;
	bh=oyhxFtwgj01YirEjx95QRWzkkYVmDeQ26h0gIwExTko=;
	b=adxtAhwdu5S7ZUe61jPKddT/ua9z53QxNrDc9pfw37uscqckXMNuSaa0tmLXHEXv
	POKsabYmZkNSDbhAgXIdyoXR37lmrurc7U6uBUUE1ny56fASzGvyLEb15BtCOgz4PmO
	CCitgGBUU0rktg+iieJu+tQm4UAWEmYkLnoMysGo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657427212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oyhxFtwgj01YirEjx95QRWzkkYVmDeQ26h0gIwExTko=;
	b=PlMj1Z5KkoJeIK9vM4UIvDV8Q/RiOJUWMXb1xEWaBVd32t4ML9daZH3j4selkxAe
	a7lKLvxpXAYdgovmVxkPAjloj7A6zKCn98bT45Xn1jkJ2QJs4TGMinZR9bexZiyHj+B
	Zd8wYzd9xkG0LKaF6q7e4VQ7Nr7hEHGFplQbz9cY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e65c37ec-d1461337-4e2a-4195-9bdc-0197d254a5f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef01ab88b87914ae238b34eca4334bad6a8127acf0d99468ef73b55986da6ecc
Date: Sun, 10 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657427212
