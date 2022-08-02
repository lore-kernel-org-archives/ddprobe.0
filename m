Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5877F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659430852;
	h=To:Subject:From:Message-Id:Date;
	bh=nvt22Od/476TufCsM7krgDtDOjDkuT8Mx/YcuMJu0DU=;
	b=EN7UahZKU5uO0gZg6edAe0ZCL+kCDeLMNAzcL73Ri+C13GEcaJy5u5+IUWdvE9wg
	ppMzEdCyeYdZtIlwPHiVx8PFEB1fV+wsSOSpNkFBUDlafrYqIxVwQO3Gv6ufN947PKo
	7N1+/WOhcQzRjYWnGLBksGmgOwngIk42jIR56tu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659430852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nvt22Od/476TufCsM7krgDtDOjDkuT8Mx/YcuMJu0DU=;
	b=ENDFox6NueIWLVaEUqtJNj7MmZr9Rq9fvPalmLf9PpV36RhxKg7y+iaavv7oNNrW
	kY7NuCz80Wb7ZUheuySHxciq2hA3yFvraYQlaMGS9g23XHio3zJh44q9AA5mfk/gCSL
	ig/g2IWEEKyuT38wr2wffiwa0MHR1ueNvvsk4klU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825dc957a4-edc3b368-c15f-4cbc-8ca1-c3a16f13d2d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc5b9b2850df721c8c2f1f4544db4112625c4ff4c18d713f52e6c692fcc31221
Date: Tue, 2 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659430852
