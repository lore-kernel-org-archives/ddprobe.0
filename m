Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFAD37A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660296052;
	h=To:Subject:From:Message-Id:Date;
	bh=LUAtpubp0oKO42jGn5xY0YAD2LM4CcQD9heKU2SK5ZA=;
	b=IuKhsSzIIzgvjgE4BPVs3h0ERhpq4G3AqPNQ5AG65hheRMuzzZcEbM+nrVHbl9iu
	MGypASY9AfCfXWBvFJ27nWXmbN+OAk4d/Vxh60OG+DSSZGxlIM2xyFgwHmnKsRUTJNl
	jT5AjusdDhPsszeBruFtPD6hP2PSomFtvrhq7AX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660296052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LUAtpubp0oKO42jGn5xY0YAD2LM4CcQD9heKU2SK5ZA=;
	b=aMhPPsjlbe8Y3xP1GxIhnpTE/8trBV0FIvtNYOizwT11lrSQxrf93soqkW0aeje9
	Nn+WLFzopM/DjtEZnAx60USz1YBP0pAIguN3R6YlrRqT9+enRyrekWzFbnHUj+ANjiN
	+Uq4wIQUiM+5o4nfL2tGnH1GPyzoyaVR/usxwQoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182915b3f93-6b3756e9-9765-45b7-9c3c-c46b35851c17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af34b2fb9a3c62e338a18879b5f660141e59076923c3a5a9dd607d9a3e30a78f
Date: Fri, 12 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660296052
