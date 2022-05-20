Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C74015A8
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 08:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653036899;
	h=To:Subject:From:Message-Id:Date;
	bh=jUPNNKHRsOzXcrLMJAw6HiZlcPapfsb9XJtuhvIklCA=;
	b=As00LO7A+My1T0zsZxiObhVhAJmNokcEr3GoGVZ+y00DLdvUaycWugWj2vHMpLpf
	rMW059YN9C3rFGGcW1kibUKBSstOF/3T/cviJnjnP0wFk4ZmLY8zAMPaazwW7p+cUfC
	eG1sOU4JPrU7KbUlqcj8wafzGC6CTpg7M81mWjME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653036899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jUPNNKHRsOzXcrLMJAw6HiZlcPapfsb9XJtuhvIklCA=;
	b=eUmej4BHPqVjtf0YuEAOBQDGKRtBQwkVQJXFUccE8Rci2cf/1lTjxDT/iquCp+Fi
	N4I0Ci0QPX7oWIsg3ipbaDKH4QYkwmWXuJiEEkvj87/nJD6ZUu77kD+e9LU13pH2Vqa
	Y/SnN51i7qBJVafo/tUGB0ihzb+mNhLaDCYRvaN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0ad5bae-ea24dff2-3ab5-4e87-8a29-3319b344bb3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24a5812e155355d87627466fd9fca87f8a2980d4f098eccb81e819d03ca2514c
Date: Fri, 20 May 2022 08:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653036899
