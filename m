Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77864398
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660329052;
	h=To:Subject:From:Message-Id:Date;
	bh=T4YUqK2OQTJXTnyVBDt6MBSPubDxccU8HuZDXOGifjw=;
	b=DPII8N45A/xF29mgKUmP7eQku3lnn1pjmZTLqts59z8OtGtPAwxwLuEaTM0d7f5w
	VNy39lj+vWO5VKjoQxuu5sgxQGJYo1UuQXPTONWpkAtmQAmvITnziohZp0XwEEDvNMF
	ZOtd/FaD6f2qMW/d0+jI6nySH1tMNldQ0ihjb20U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660329052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T4YUqK2OQTJXTnyVBDt6MBSPubDxccU8HuZDXOGifjw=;
	b=O/m2rcUogkVGCC73lG1dDqEPgAD6835Y9oS5ZPxryaT56ElJjPmnEkKcic6t/PqU
	p8hNldVnvONeDx7Y5OLkgqV5tigGHRY3ZYf/eFzcfiGLoKKKwvSL6ruzLM3GtEdy8VR
	HVvhizjz0N3D2q6RSz6b7XnEOHO1wCjgCgzFb/hg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829352c9c0-a94ac3fd-d5c2-4972-9aa0-abc0bedbdeaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bc4b0fa19456cef80a3ec4acc5b74e310ca9ec4f09ad665c632bc47ca07d0f6
Date: Fri, 12 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660329052
