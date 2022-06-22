Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343001386
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 12:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655899859;
	h=To:Subject:From:Message-Id:Date;
	bh=jQJmrqXj2Jf8a7PGLrtqcs5/TK0fZbdIGEoA+yLlxp8=;
	b=N2gw/krFq6qCAbfKYDE188+m4WDvLmBX281gO3ZhuSP1Tk/1z3rUTtGk+L90LVYw
	4hR5Kc9f6qsAsMVyepajIyQcX+jOGaux0jgOGYFxgqwOnaws5CnbHYMh2GvRATLQuwP
	Svni42aW9ldv1pjV4SVxg7V4BkhwBNkWCW0devoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655899859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jQJmrqXj2Jf8a7PGLrtqcs5/TK0fZbdIGEoA+yLlxp8=;
	b=e8onWcBYjLhterCdT0ZERlp3m8QlV2dEzifvwoKD76SakYbD9MdaKmwcWwq60wVw
	O0juUiDMbzTPSRUoL/ZqYh5J4437P3WTurbJt1D+ZZPD4fw918mS+BjS08l0x3MWJh2
	wDcYi4JDs53HbfwuOkN4avCncZQ9dS3pWh5gDsOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b52a940-7e4c2f61-9ad5-4b65-beec-4068a7613614-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2792132fa114dd851c5446e8be1899bed2ab26f8d4236a92c325f8695a892777
Date: Wed, 22 Jun 2022 12:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655899859
