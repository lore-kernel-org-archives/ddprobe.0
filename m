Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374252562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 14:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655733599;
	h=To:Subject:From:Message-Id:Date;
	bh=0Hzbux+NLLt7WaQE1m2nCs4jYyvhwpoVyTN+XyJaKKE=;
	b=UYcjYpCCRTspAQLhqX5NmoqpxDUyIuBIJsVsHW7St3WpawYrSQqyMZtHrDmderUR
	TpG+FS+tYxV+Mq01UXAR/hICAKQpRpbnqAYy6ipRJrCMPrn9gSpnvqCoNSBn5MTi2cg
	4HNv1nus1cy1iFfDgCv19xnY+wzIymaAYU9d3ra4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655733599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Hzbux+NLLt7WaQE1m2nCs4jYyvhwpoVyTN+XyJaKKE=;
	b=jc9qfgKoS1rAg+Eo8hQzZUl/jlXINuf5os0mP2P7t+IiP5U9mu1OWOMb/KDYpw1q
	vkBkiGZKMRTpKuc3k1DqazrgG6at7k6lfdUDj5IAScJs5w66pLqYTQEsLc08dJhfmb3
	kkH1ippG0H+woP9JDtzZ7CGHLq+NUO1Pv51DL9xU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818169bc48-aa2e88a0-afba-443d-be89-620f3c1dadfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47424018e65302237ea964bfdd592a3670d11717530d72d86c39c626577aa35d
Date: Mon, 20 Jun 2022 13:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655733598
