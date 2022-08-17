Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7853C29
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660763452;
	h=To:Subject:From:Message-Id:Date;
	bh=BQKFt8tYg9A6w4vY/RZ9h+Skp3+6I/SrZ9lemSgThNk=;
	b=NdXo0Sg3wxXTQNuy3nxwnev7z+lI/KnzBxGR2iXufdakSM2MVxHx1vR491VTfa1G
	vc3THMDCfUQTG0ri2U6C+znB/cdQHE9GTYaY1WGPosNMIh4sMqjwszKs0h9WhoWSvxn
	dKQm/ZcEoWmTsbwmrG6DnrqOZUvTs76GPD2oF7so=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660763452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BQKFt8tYg9A6w4vY/RZ9h+Skp3+6I/SrZ9lemSgThNk=;
	b=HwQZGPUk+2P+epwS4HO/qzHs2Ia8ohAk/Z4FdUl0lWGPOoA8p+onwTUjTXyuzc3n
	GVYt1k8UF8Lrh46DQlXzjd8LbAG2L5TzYr9uYZP+ZgmLQ4TM3qe8/17JQhKxMNDshYZ
	hm09LCT2aVobjRf95MVnHiXDoZzKEAEdncr7gKUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad3734ae-02b0564a-7ed7-4a68-9630-6b6667ddb90a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac868c7c9c86324429ea413bf96628a01d7053b5001b79ff9b9519266155599f
Date: Wed, 17 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660763452
