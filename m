Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FC23D7B
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 21:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651873918;
	h=To:Subject:From:Message-Id:Date;
	bh=n0eIIgKt/83Y6wFgsEIO4Gzfwiq8qdF/FA5L0IR7FVU=;
	b=QeuhNDgA7OF3t0cl4SJvkUTdta/02fccrqAQzezjDeWdm6Har1ussE6EoC4QbOPd
	qkmBrlaMcmbJmJaCI/ZOnK1n35U7qBJcRi4xygrhG+q0QHo/pg9qLoUCWDKWJcKSxPL
	WPurcs/Ci/OChuPW2U0UXSMWvvSWULUgoYhle9Wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651873918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n0eIIgKt/83Y6wFgsEIO4Gzfwiq8qdF/FA5L0IR7FVU=;
	b=KcgKkdiOt7DKNZMvXiwXt2fz7UrHb6pZ0NdxRDRARakVZ+Hidj291dfXAKGTcDg+
	+iS9TX3ahxGEnYs451JlNAvtFz2V2d062qtSiOyQrGSs8z+R2iApWSl1XygQef6yUlJ
	mTG/0/gIhfn5t2r/RQ6nMHLvvMefkX53rCk3UB9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809b5bad5b-3cad1dda-32c6-4f37-85cf-36f935346eb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92b3df9bac9cb7f521514355aaa07f414f03b9258c387b1f0f1b56b54a1954be
Date: Fri, 6 May 2022 21:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651873918
