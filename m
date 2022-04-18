Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2F8627
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 02:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650248698;
	h=To:Subject:From:Message-Id:Date;
	bh=U57VFua6jIrkhF8ax04fjUYm0M0Lc6uziQbTBEi+BFc=;
	b=FOYAykinBCtuW0RHxro0kct/KUZsT/mnc0NhVFujlVqYB1btxuEIRLK9yPMUOYMm
	Pagd5/NMjcoKGgvGp0kIo6XNU6v20LMoo6GokPDuEf89wDFqLtc4dUq1LW3ssjK63B/
	IXJHH3Iy4Ra50OPzt6rZTyZTXx5iFM7UAJ9SHzjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650248698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U57VFua6jIrkhF8ax04fjUYm0M0Lc6uziQbTBEi+BFc=;
	b=GqJq3qprafymolJydtA9Veny49HKRwdhmOz9nZy40cG0mrNXVaNsJKCExFRL2tIv
	fNAHE87hVJ48lV1tETX3NeWbhi0cf49KUAvEtQvzM5w2tPe1xj0J9gT4navdvVpwMgj
	A6CRLFfRFOlQGkQwK6rmaTLTpfSjH3o9oEJHHtlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803a7cc995-f84ce6ef-e9d3-49ea-962d-10db50c3012b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71b7c863a2c8daa721a803f6f1d45f56ca96b752a266f6b2a20dce2fe1cdb530
Date: Mon, 18 Apr 2022 02:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650248698
