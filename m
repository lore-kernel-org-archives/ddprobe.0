Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5CF23A9
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657604812;
	h=To:Subject:From:Message-Id:Date;
	bh=Q+uPj3Gs40FshYfVkJHSyz0XmLB6KTnsf1DEdyt6O3c=;
	b=HETRZVVgtm9gdizzBhORd3v7xTEc3TjPi/rcoMH80yJ+5Uqj4bd2VAVLUzez3nH0
	ERcZvMTeTymZl0kY4gufqSQ+6mWKy+Dw2CqCHd49AWJcy+xRLrbKd4q60YLxpZqspAL
	CEjHK9pnQxF3GURoKGFnnGzzgPbb7CsclAMWcfzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657604812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q+uPj3Gs40FshYfVkJHSyz0XmLB6KTnsf1DEdyt6O3c=;
	b=SVuS98lkDprWG7R21lqeVyHvUe17393r3VWI6me6Q1V9iI+3ItiwhwpEpHEl3UZP
	qmuVNSs3fEQ0j310U/0waBp2eWdymlzhgob7iOA5ddZq/vIZ7ZdBlX+Ki4lEeGZnM8n
	nHmDeJg4+YWB+VzNhjtfrjcIh8NNQVoE4bq68ZXs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0f22e0e-5215082c-bed0-4116-88c6-b32e20aa3ef1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04c66bfca9bcefcf3a40c25ad54ff21b976092050d5c15923fb4aa41f28c3d5c
Date: Tue, 12 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657604812
