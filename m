Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3729117C1
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 09:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651482718;
	h=To:Subject:From:Message-Id:Date;
	bh=4X0b6RZmgmj8acLbZk/HDBzPqVHkViY70jOrXhHQAYE=;
	b=MmxxCHvF67VJq1U7djutcvZhaFn/BIlRw4lja0thRsZ/eTAzjE0/DLpYIddRV4hK
	hRjfyzcy9AUPsmYiZa8yENU1DpbHg9MlTatgA78ke1iHKfUE6wriLRVCoXjAQcCX4Hq
	IYhDtDXN1n5fmIhJpHeaW7S4u6nYneQSsuE9vKrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651482718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4X0b6RZmgmj8acLbZk/HDBzPqVHkViY70jOrXhHQAYE=;
	b=RScHJePmIiPVPJYRsArnu5GgKajehBnFOeuovVqQcmF/walXNYRyXnW4kZhrvVv4
	D4Rto28J8ZdG2CAiMGkoK0krvwTv7EjicRUo8j5/V+zm2j+U8iboH6c2v1bwqVyGQgI
	UBvQ0XSmqSg1uRajVeRH+dU4tpOs5LisiKg6YVR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180840a7039-fc0def1a-7c89-4ded-94d6-27573a694413-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e22ac8608f054fd84b1d43574f952448f4ee578ba694a9c052a8931b50eddef4
Date: Mon, 2 May 2022 09:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651482718
