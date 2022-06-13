Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95877A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 21:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655154119;
	h=To:Subject:From:Message-Id:Date;
	bh=4IIOstjNG/59hcIjzAfN59l+Nd9P9qfBk0iN8oAm0B0=;
	b=MXV4eu+8QyNlNqAjmR/PVW5RW3bklw5UVQaWir0RbwBJbPgawtGaGqyd81EMidW+
	5R8YcKLkl60MVqRJcvs4CeGwLWiBB6nOyeo/04eMdmSe3CFwW5YVLTjLgkG5WJUKFld
	WkHKVbGUgE7k6edFaOCKApJ/D1eVvV3j+78wIROw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655154119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4IIOstjNG/59hcIjzAfN59l+Nd9P9qfBk0iN8oAm0B0=;
	b=CTOBTfgldm8fLYj4DBgfM1OrIDGYFWlAVVHC9W34gkvGPiJHpqn7hfBCK+El2/ns
	YQ5b1PyCQxvMUAcCY0/KW0cFPzHHC0EOr1k55ST0lnvh2LQLJf+SlCqw5ca2mkOgEeQ
	Ve7avXbs7btTpDcL789C4qh340TCHYUEZ9Cfd0z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815edf921e-abd0d5e6-9c74-48e1-9f60-6251dfb37d83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66cd45665b268a90299f1faadf392f2d9a841e172de17394de2f1f90eaf245be
Date: Mon, 13 Jun 2022 21:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655154119
