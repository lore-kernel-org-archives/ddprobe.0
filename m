Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26067B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 15:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655566799;
	h=To:Subject:From:Message-Id:Date;
	bh=tH+og9fxFU/K6yn4bvpiiMqmakbYX6LO6pOyMqpDgio=;
	b=DtIAH/FzFv32OR/06n8c0h276o6ph7Aj1eBctjbcKXFS/xJoJf6Ga2JqKmDL0d3P
	Twv4A86Q7U3tV1FYDeojgHVclQAJi5LLoUd50URzfFSKY7VcGT7AIEMB4TUs4U06OSg
	0M8eMsN+0FWOZ1/N1Ap6Wfeh4x4HkJBw5/tmlBGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655566799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tH+og9fxFU/K6yn4bvpiiMqmakbYX6LO6pOyMqpDgio=;
	b=Y1FSI0ddEhlXdq+BXgf5s+URsSloFwF/71Ee1ZvSrY1LKf7K2I/CV4+Po3YJMtAN
	G057dc0B95yPkrRw447o0JooNgIMSQ0fH+4jclIhkaxT/KysyAHJplTcWM8TZR7yJUE
	dR0U5iYnGd4pQETUEIn0ELrtCp0jVFItlFDG4e/M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177789179-2e3cdadb-c85e-48fd-b980-3d9220da75f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8126b42690247226966c3f09bdde6917a48430f7a34ba16f6ed2a534509e9d81
Date: Sat, 18 Jun 2022 15:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655566799
