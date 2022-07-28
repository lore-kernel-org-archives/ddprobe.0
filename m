Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB2F1101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659000052;
	h=To:Subject:From:Message-Id:Date;
	bh=LGq/XC34V/jOuS8+lTGNAT6H1adoFqGfil5ycFYlQvc=;
	b=iKFEza+eoYwYela/UMS/C49LWVjiJBqXTaHPXqxBNessVIiuISN6/+iEPU1lgiGr
	70lZ+FuxJAgLC58Rf1LIW3SWMfennif9BtY9qmmuk+yASD0E7ekzAjMhJwhNQZYnVWb
	xieopujW1LUlC47RNyYxeY6F835Pn4VkjkDyri6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659000052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LGq/XC34V/jOuS8+lTGNAT6H1adoFqGfil5ycFYlQvc=;
	b=eBzf0p7bB2XfrKEyJDxLxR2dz1BbeLqmLZBI0d5ux0qbjY+seTh3eXFmVN1PUg+Z
	eA325/kDMlvhAePBT/QpophO6myksOnxgPH4XuyW4+3WRoZflcw1I7q2aWq5/UsyA4a
	DEuA8HC7UvvYMb41zkG9zKC9UFxsvEST30Lt+qrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182441bdb39-8a4dd85d-7129-4887-b65b-b4df6b156975-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3ebec9f918d068b833952b3e2e0a9a3e38e3db00557de0f5144dd439d61a918
Date: Thu, 28 Jul 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659000052
