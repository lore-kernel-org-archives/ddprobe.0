Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A337B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 15:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655654339;
	h=To:Subject:From:Message-Id:Date;
	bh=W/Ad0bsxXHDPC/STFQqnII01AdckO7/dfgTnmGg55yw=;
	b=aHMDqq9RPplOC3052IsNRksfJn2OCJUuYRFRZnVyzR3HBJHwGbaAULudAxptfu9w
	W5NP5Wv3C/vhsyaSvJYI8gMnUUIy4vi4v1xu03wUGnKJILX0PTBe9d7rUL8LO1IxjsP
	zFBNgZK+T1OVnRwl6qm4xWUJgfayamVfbFVJ7dQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655654339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W/Ad0bsxXHDPC/STFQqnII01AdckO7/dfgTnmGg55yw=;
	b=dXttkQeyuVFsLLCyzcr8WjOC+wa92tz+i8E+Vwjari5U34c1a2M0XNcP/Pgz4esY
	oLxdObQ3VYEbB0Kd4xzYAz+UvUOk8uzDmYfBlWKs3UjeludYPIspCEYRkzmNXOupZDw
	KYttcQz3Pm6csehprnLellVcmfsinCsfawE3BMj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817cb05292-e2add421-ba0d-4510-9644-83da0487cb25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f36a5ccb423335ecea56310e47bb5d2fdd33708ce93986d2c7f28727dce6365
Date: Sun, 19 Jun 2022 15:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655654338
