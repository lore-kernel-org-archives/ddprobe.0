Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C54638
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660299652;
	h=To:Subject:From:Message-Id:Date;
	bh=CMSquYNoW5UNgwX5BBuc2DEKEYCNcL7TCfzLPram/Ag=;
	b=F2zb+PS4oG1RQtCpFEPswPhgLn7Qq/f76j72AlgB79qVjJgywgRXJiVr5OMay0T5
	yuNzGha1bumJGAgNCqSTnNC+nt/PG+DgvN1s89QNV2Z4kCVKIurDi+gCgbsBcMd0pIt
	R4xXWAR6EJ0kbZ367lUlU7aYK3IlaM6bMgomQlTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660299652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CMSquYNoW5UNgwX5BBuc2DEKEYCNcL7TCfzLPram/Ag=;
	b=ElteBmK5ZYQnz+4BNg7Z6qeojeuA15qG244PUq5V2qIPaGQ5RL9RPp97YsIQkX9f
	38KDF5tix1b2prpcYLfpDOM+OYAfoq4+FSVOGXFHf4h3pTIWjKlWW4A3OlRxvZqxO+2
	YTUu3OZVXAgEyjc+G04qoOidlYn1g8PzUiDI5Wvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291922dd4-8c23fa74-2424-4f6e-9c68-541e1d9360e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33a8e7c31be61198aac2f72a2a8f1d38e84c70ed3aede24b928db09f26045c6a
Date: Fri, 12 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660299652
