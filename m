Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220752F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656264412;
	h=To:Subject:From:Message-Id:Date;
	bh=zduYGgwIbxNhH/Kc81PFT+Oa363PyE0ioyBHeScgXUc=;
	b=Tw5G7rFWSAIBLx1fuWF6B+ISKRQyt1+h5Q7CweAwonms9XvZYqtDiU/wwRbEFJdi
	fKfZQjQYq8FnerJVW4VcTsqZ5DKYYb9EY06gxPqDLUuq9DYmoHboNmysxs5JH8uaL+V
	NQIW+aKFsLdC4cajGA8LB2vZjL/db2UGFPi9WHgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656264412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zduYGgwIbxNhH/Kc81PFT+Oa363PyE0ioyBHeScgXUc=;
	b=EULSgXOsXBFNaF1q8nbMr+WZfOApg/hj30qHxiv3kXlkya/Lu9Hq+MOpHwJ9aXQn
	+o5kXIatB9nihQnWQyHCZWmV9Y+EvVzaevpa7KOBJE45XbCsyehkWNqyeNEeiNlHTFx
	pp12nu9bmhU9UCNDFuzZeJh8IiNWtIMjB5D3JMBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a10d4c6f-9ea7d849-a109-4d43-b39c-470ebd638106-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 162b79af63a59b620da837fd02ef59fcfec9a7ad615357131aef7468108b3df9
Date: Sun, 26 Jun 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656264412
