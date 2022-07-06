Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D014A3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657115212;
	h=To:Subject:From:Message-Id:Date;
	bh=TSqKUzpRinE4j+BEBgAcDE1VYXTyNLW7gGLEUBim5f4=;
	b=NWI/kx+C6TJhz+6FFKI+ty7Ngt96YbYmMrN6SlbYUSLpSzmSy8PVlRJayDb5zhJ8
	9yWNiXE1sX1kuz6hxNgxjWOqCCqZ00FYuVw/JCxIg43j168uugHqslQCD4J+sGJzcgE
	aRSdQjCCnoXs6H1XZnG9/aD7oy0kWvIvPzhgkQiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657115212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TSqKUzpRinE4j+BEBgAcDE1VYXTyNLW7gGLEUBim5f4=;
	b=TKbxLoHiljJDPzC7EC9IWEewBhYPYkGqPYOn/VHOPtE8B2Brkcn/0UsqeEYUU99T
	xLhGNrlXTfqjuREUQvgjhw7HZQo62ONiONEHj1oUPLx2BV7MUDHtCgKWOCJ+6ySYX0L
	iBRh30bV0/Itfi9pbaSOpbebvJ3UbEiSVJRLoreI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3c379f6-f855f21c-6f32-467d-ac60-7fed4802e866-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18eb784460589a67b506d83dd55785f260ff8745c0e16eed0890fc779770e98f
Date: Wed, 6 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657115212
