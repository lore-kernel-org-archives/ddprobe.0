Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050C3EC2
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656637012;
	h=To:Subject:From:Message-Id:Date;
	bh=y7yXlh4aqcQXSb0/IqQb0Phkz56L/CKSCE8p1nZiNRE=;
	b=TLT4TguVIz+zb7uDuWOUob8isVrNVwNlHkFMsX6PK759KTJ/QTS1lsdQACcor620
	rsGGdWWRYatVTAZj9OeRP6wv73rHAJWzY91hZ+8dU1vqQ/OpVGTG3oYBXpwDya+mU6t
	gVx5KfxurG0e4hgKs8lTmpyPQYAmVxTgVh1nKZ0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656637012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7yXlh4aqcQXSb0/IqQb0Phkz56L/CKSCE8p1nZiNRE=;
	b=YLLJkndluWQ9U0E2DMcgm1mXZaYSDku/OoUa7Tkaw/XRgtLDHUAVEp7JwkieAT64
	Bq4AwnjEHEo7axzUuLr2S5N072qxGh5sxJiRZFw+DtULVGobhlQTt7A1dUvHKiBJSjD
	15VQbG1p/P80CVM+Tqm0QxeF8Oxagsu7z2gBEDjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b742b93b-61f7a4a9-6c9b-4d10-82c7-ad5c446c88a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4538534fd09bf7a738d9fe319e6567a5306f1f5f6cea5186a4ef591bc88a70e
Date: Fri, 1 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656637012
