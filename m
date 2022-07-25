Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D520E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 19:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658777812;
	h=To:Subject:From:Message-Id:Date;
	bh=Rt2DDIg9JVCw0dOvQCsBhE1sGHE0VeoqiHc2ZrG0UhI=;
	b=Mbh1joohsx0A6R7JJK+EFv4Mw/Zromxo7lqnfHlwy614bvD8G55rSUxwPxp42y3s
	ebsnXl11aG/lb7PCwjJE78znGUweJMC6YIa6isLlMf+tLx6GJ/9BECvoaSBHv0YQjFZ
	uj8DGhx902RZuCEXkiXlibrplrmPUxagJxjPpl3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658777812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rt2DDIg9JVCw0dOvQCsBhE1sGHE0VeoqiHc2ZrG0UhI=;
	b=duIBg1vt04uUWu6upLs0ziMB7/+oY8HpOCnpr7U9ZLo6nHr4eE+ptxuZqUlEzHYh
	V4u7Tplx54y2F9U+tOQc+Mz8/iwl/26K+U1xp+GXjTX8iVlf9JpG//JvChBBZiM8UfH
	SxTQ5VBcYzZzktsX6nmWzdIE54GO7SxaDgStdxSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236dcbd0c-bc9f796b-196f-47a8-afdd-62c9d3126509-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b115604af5c8dc4b9d48f9fb4a17d436af5bc9c42b1618fef932cef13f19fe3d
Date: Mon, 25 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658777812
