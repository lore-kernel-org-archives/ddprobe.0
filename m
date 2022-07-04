Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019614A0A
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656965812;
	h=To:Subject:From:Message-Id:Date;
	bh=/gRQBHP4/LwBzMRhIj6TJw6yy7Sn8qHwMRm6gd62H6w=;
	b=jgxpWXgNiI93hX7KBs/Ezltre2T9mi0ZDa1X3go/CJQnTfdS82xRdoeSIrMi/O8S
	Vv8wclaFMdw3KIXqR6V0l/IRs4gpJ8Y5sJtYYlSY3PbgyiRaBPgyH3QBNTbp9LoH1z4
	EtEnoNksOrVy0qonoPwrxGPT3sbZrNa3PHo8s2+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656965812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/gRQBHP4/LwBzMRhIj6TJw6yy7Sn8qHwMRm6gd62H6w=;
	b=aXRQEPUP/Os6wnLTm3XLj/oakcv73tFqMWJN+FtuBky6pawSarkaifdwbiLKdvWF
	u4/6/UIsX6WmdY4hm/ss+o9y/bMHpr3ms1WtaiT+LCP5uxjTgXdSQ9efsU+yAV7e65P
	GlnX6eL2fW7vWBjMangRKXre9MHNZ0Lyk6kYXKkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cadbd04a-655b4cd5-4f99-43b5-a4f1-a0ce1e075cfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b81e1abdec096ced0c64b4db40f23ae4b23a053611093b9dbd3678f35b597fc7
Date: Mon, 4 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656965812
