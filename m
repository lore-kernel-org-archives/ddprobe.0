Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109857A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 14:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655218079;
	h=To:Subject:From:Message-Id:Date;
	bh=m0MEPgsgMOaU9biQrbae3TgxrQDo1/p8ysqRxjfmpXk=;
	b=GYD1oAeMFnBSp8k2fOM5GwbwdrtUv/e7Qf1bQg7FhO7IPEKYHu9NQ4K4JZOvXdfF
	YLrZqm92lxgT7SS0il9oqxLd9OmWjGbOJ3fq1p2taw8763WqQZIOFpxE2tHOyLHvoC9
	MyWZGD4VN1+03+G6wFnQ5rkCPdgJSA49vIU8FOYM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655218079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m0MEPgsgMOaU9biQrbae3TgxrQDo1/p8ysqRxjfmpXk=;
	b=ZozET3s9t7UjK8QPZ2axridKysZJmQfUV2Ag/Ll66kDtKWKMbbQa5GolKB7NXgOe
	ZUYrM2w4VVuA7Y4G+cePXfULBIyDuT+i1/q9l0Dw5Yf1tJjSQHCPvKCbQiI9OQP+0NO
	11l0M9lvEwcFvbf9H7EsQ+lFxmfP6DtIrfHbZdt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162af8631-4da76912-02ae-4bb7-806f-83511af4dc17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa2be45a4719c13630cf755a2150b51ed91a160c52eb6609081be224776debab
Date: Tue, 14 Jun 2022 14:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655218079
