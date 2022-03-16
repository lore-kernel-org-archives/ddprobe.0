Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516FD468B
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647398184;
	h=To:Subject:From:Message-Id:Date;
	bh=cxFe5KsEBPA1ST4mFZyeFYigUmrBQt63e2wAP6QetCA=;
	b=al8byYxxLxLee6H5Ikz/fG9wvGL3xQbBH4jaOmckgRcq5+tyI4+Pq1EtVV6kI5w8
	Il2VgN8rwP22mzgd7YGQbw/eabUPsZ2pohJiAedq2ClVX/zIg5XQm5Can6/u0UGW97Z
	hZmM8IlkUPaW5iWuc79tiSpBWHvX3m4hrJkVrYcE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647398184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cxFe5KsEBPA1ST4mFZyeFYigUmrBQt63e2wAP6QetCA=;
	b=k5mauCZ+r2Y4VQ8464rhYkUI40YyOiIt/CtkNbbYPfNkTrCUFKaOjUOb9G11vusP
	4O9rRtf2f5Zl2q39O2gxBUc44ANAZr0u46mAdfz4X0U98eikmK3tptioz7u/kAknHWa
	I5FyWt0ghHFtvzSpcxw2rRglqNxepMRXkIsZJkaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90956747-87f3689c-2385-41a5-971c-4f4203283947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63e716cf93f9fc97d1085319997c24dde371f8fd5a4282550922dd740d651295
Date: Wed, 16 Mar 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647398184
