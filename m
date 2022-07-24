Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAC82F4B
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658704612;
	h=To:Subject:From:Message-Id:Date;
	bh=TZrE5pTk0XGrngQLVKyH32w+xgBQ60spe1dovH0K4Gk=;
	b=baNT8YmncjWt/I4VrHzz/ySRNoKsXdmFSdO23VKJixshBqFAMnHIuO3CuqQiCKwG
	8KRpmCQSmR/1f2SgW372996bZ6EI7eXcS1Mf+4oVcNFaxVqD6P0wag6dw8gTRcHr+I7
	k1iciGXc6dfvefjt8StfQ/TmSXMIQ2lN5Ne0/WCo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658704612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TZrE5pTk0XGrngQLVKyH32w+xgBQ60spe1dovH0K4Gk=;
	b=frWopQ+qdt1kXRdA5WzP4F3NNYlZZ4Oy3NhjyCocfDVfO8x54DjHjI3o2e2qKMCO
	zwOXuJxDC/zZQgTOGTwP5rQ0Z4niGikuWfhrAjO1bgcRjluw3XCilwM1A5c/K1yOBEq
	V7V2jDkIYrsUagQKTVjUWwdmbWnqkefZp794jI1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182327fcbed-9929b5a9-d89e-4faa-b612-b1e49b734427-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 401b9eb6dd6c29f875dba513315782e49a846a50dcad4f69b991579bf3982d6a
Date: Sun, 24 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658704612
