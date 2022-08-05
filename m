Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805DEED6
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659738652;
	h=To:Subject:From:Message-Id:Date;
	bh=k0eymBSUAptkqOec0uy8XnWWwnTYCnYB/LX+hdYEPWU=;
	b=PFssDY53O8hO5SQ+NA6tdvJKhjD2tXU21A9hCDJ59rE7fylAcqercvm3+8oQa3r+
	FmYheLkzw81WYy3aJryweabt3a+txhvP4yNrfnsWvuyn5RDgPYgeDq6bY+ovCVcHYR7
	y5k07SuZa0G2e0Rsk4n+iq9JBQCBBT6+xiLKeBOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659738652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k0eymBSUAptkqOec0uy8XnWWwnTYCnYB/LX+hdYEPWU=;
	b=bzlR9okpHKPm9wMsHYV13MyiDJlKt8C8wntm7gQIxK2miRLrzf+2r4pjmWsiztOo
	nIHL9L1oAgWlUO+R2tw4XIlTPqojjY839T9OKy5C7cMzWkBpJXqXg1048Whr50badZM
	XnW7kqxFEfqWeleIQ3nbVp5JB6Ai/WaOwdSiNisw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827021ff8d-03114e52-b0a2-44cb-a3cf-a8364b951904-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cb4cb2e1fe4e82bca6143b311393637f617c774bed46b4624c23f505c8784de
Date: Fri, 5 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659738652
