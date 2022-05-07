Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6791E800
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 10:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651919818;
	h=To:Subject:From:Message-Id:Date;
	bh=eeJ0Dql7KweJjN/GJ8wZBwmiMlkX/NsP00GnwRVwoPM=;
	b=gTZzj5FM+Aj7HaLeGLfAmfmAcgfnCr9HJlcXeOKKKf6lEr4Nbu9ECspMONghzIfi
	jXE4sMHLbgEiP++JffjHgH5AN0wochVW3iNbF2vY5A2MkDU+S9/fmDxteFJE4DoAmn3
	Nq8sEP0IgrzzK53CTkM4IXJkERExgLEGFWzfYuzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651919818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eeJ0Dql7KweJjN/GJ8wZBwmiMlkX/NsP00GnwRVwoPM=;
	b=aXuU4DVWVPW8202sGgnqIMFUOAtcNZzhXFfOKm6YtA4fyvHne2IJfphAJGNlGepH
	j1rL8A9onTkFeLW7BVPzvMUIm6gYgSZ5nRqNrPcZ/T+cgeZvS+lQz+V5O3ocw71OF1C
	M7xM4IUBTr1WWivSeyyPs9Ai8MHaykPGl7Hu4qjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809e180e44-d4def13e-ae6d-47bc-9d75-8d9edc06f2cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dce1f631fc6a9930176b3e90e9bae3dbc52431192d3dbf10176f4dbe429ed03d
Date: Sat, 7 May 2022 10:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651919818
