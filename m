Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CF8A46
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658121412;
	h=To:Subject:From:Message-Id:Date;
	bh=QyMYyf/lU2wvDO5BKuywSsSMTG0Nm/RAJdOmfHmvB+o=;
	b=KaC3jSzgGQ/Do1z777KGNnNuk6aFtqAksVNVisXR0DmVwNK0x0QLfVAKjXC0L4fn
	r3wIUpyxsiv8cpAPUs0sQdL31/XJmcdlFepX0Bc5gugg/C85qJkRMvbkVEeEjyxBqH+
	zahcRk+1C16H+164ue+CJSRKECr+5Fu8QwsR2bJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658121412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QyMYyf/lU2wvDO5BKuywSsSMTG0Nm/RAJdOmfHmvB+o=;
	b=aTtpSXTtV1qwxRwhwf9x7LU9OMnwWQKaPxd6y66Mh2Amw07RhhYmmx2eplRXVtcg
	GXNSjhii8qbnD4x1MejS+qZEW9aLRMncHuY0qVP5IeutcuxpZnXAkABnBrLbbHpX7uw
	di6CKstj2Bz4XcRO1f63O2BW+/SO+GDrS2JEDqNE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820fbcded6-b7557dd3-246c-4629-a066-4ba31ecdaefd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: debbd92bddee78b5690c59986e2166e269a5f455294b4ca4eb0f666d26679028
Date: Mon, 18 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658121412
