Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EAB7B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 17:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649871898;
	h=To:Subject:From:Message-Id:Date;
	bh=0YxobLKy7jJSQF65GsfjmsQOYcozVOrAAKJ/fOoB7/g=;
	b=hRj9DHZpr8TVErblwBT5L2FG0t+fAmO+Q66RtDrrCpHjp8gLnE2TSM30IHdPaDvj
	hLDhAtfMlztPlpg33e1Ucca787/PzyzkMxeimyV8EwpzRvdnOIecXhUKbGARgS+dCI7
	vjc6rjcl8a3lxnTVt2gmGU0jDJuC4N+JLdth5u3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649871898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0YxobLKy7jJSQF65GsfjmsQOYcozVOrAAKJ/fOoB7/g=;
	b=J0/nOzOja4HfgTjavpbn7pNcvQe1v92YhGRX9fOgnHoxT/Pg3eFc3D05ffYtOEpo
	A4E3Xw6xbE5soAZJLX8Jq2l+skizyDWR0CT3wJPLurFPn/JnBznequ8XNv/YGJdPmYX
	Fs+0lhdH7Om4gvMcrT2lhpbAPQp3eqpEAS3kpt9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802407470a-2f5e2b00-de8f-4c37-8fe9-43a2e9db0dde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a30f97e59cd7f3dee77d0a866a631ccdcb48fa79213933fc6e5717c55b9c2122
Date: Wed, 13 Apr 2022 17:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649871898
