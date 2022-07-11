Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320881FB7
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657527412;
	h=To:Subject:From:Message-Id:Date;
	bh=8TUrManSekAXjRF3WrQEMOTAdtshIp5GZ85deXtOu0k=;
	b=C/KzNMCTmGag4UeIO8k03/IlDX326mDospv0PQUoBIZYKj9yAjypymZRdehk7C6o
	wCqJbkFV6aVnfQ2xonpMf4F7rNjWLTo6OpcLg1lwqK3N4N48CJNj4xZBZAjDPx7uQVh
	f+VUdH9UKsslMsRMJm4DrfKQWpkygqSlK06CVPC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657527412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8TUrManSekAXjRF3WrQEMOTAdtshIp5GZ85deXtOu0k=;
	b=QJtSTwW9a8nzIlRWF6GxzsSy34WQ3s7tc8uyIVov3Qu2Lj5i8ZSBixNdGnYEBBr5
	9g6ftakjdaRHJdxKSB9xWPf+J+D7sP915xQ8PXG1VJhTh9HVzITqCRzaJkDMFhRKzVO
	zNU+fYVd+ik7nkIRCrQ8MW79LqSHMz3QislvyNb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec552645-38056f57-aae4-45a7-a74e-87e62cc4829b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43547ffad9071af923efda486222020c5bd8948227e74e56cfb3469e2a6c24c7
Date: Mon, 11 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657527412
