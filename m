Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A36B7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658883652;
	h=To:Subject:From:Message-Id:Date;
	bh=Pz7JqfoH295+EXFF7bCGNfx7eX9cQExpQv7h4OGDUdA=;
	b=QrmsI3cLNprYFv8vwGySHt6Amku0OdOn2rHKurZ3Efb/awoqepCiNlu6gHRYSY5J
	tXHIN84Vz4wLto7QJMxXjdZCpjPgodrAAkc57GAYpvoSESZ+qxJk9nPik3UTA0UsUSt
	XX6yiMGemEtXuKFMCZwwXPbfhC3qLxVxabG15WaA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658883652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pz7JqfoH295+EXFF7bCGNfx7eX9cQExpQv7h4OGDUdA=;
	b=Ip+a/QrxAZQam9OThanN19j1x2XIg4P3IB7kQAT1VBBxvrvhFxg9lcSLz3sbcm/t
	+jw4yFqD4nrefFshpGzcCtzc+nSs0efvnpDsNO0YhXWd1PYAx3EWxif7Yf/IKM9HS7V
	gOcLTsa88qYwCGG1l4M3e0BVwGPbJoCqYnxO0OB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d2bbbc0-578fcb41-2c50-4de0-99d3-472bbff31fc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fe66b269e2f3ca0d2a4ca887595b5be55a091694b4341209ee41e437e1a1621
Date: Wed, 27 Jul 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658883652
