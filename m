Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A5F10E6
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 03:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651981978;
	h=To:Subject:From:Message-Id:Date;
	bh=VloRaM+5Y8E9LUw11vSSxjN3ki7aANtDET8ra5uPNrc=;
	b=d7zZCGKZQVUxe0rc8a8mGm2knuOHYAYpZO3mJMKRB8USlQw/XjELmVMe/QPVxfP9
	p8zMSh+O5NTmkLMeV5+oMNOR81FaUN4H+puCcFfhEni3RKaOXQeMxbNFQ+J1yu2WfGS
	sv70L5llmB5jDRUEH/enGSVi57wZkhI005OGduKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651981978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VloRaM+5Y8E9LUw11vSSxjN3ki7aANtDET8ra5uPNrc=;
	b=k1C7Y072cH2NemzRC7EHhOWs0iFtiHmKA/FMgURSQUeGIW0IBx7ZizmqPylGQopY
	Q+C8HsN/6EfTkjoPwI2BLfEYTvEmmpnnFgiQcj3ic5kYMd0u9hms/CUxXTZAK9j5yPq
	RyZ5J8TEGu9+9UKZrOQVpan9pOgL6CpFDV2ND9JE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a1cc8af6-1280055c-e5d3-4874-8e5c-a24efab2d07d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a431a939ef2dcffd487084522e628913f45da83b42832c33d4d6101d14b61ee
Date: Sun, 8 May 2022 03:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651981978
