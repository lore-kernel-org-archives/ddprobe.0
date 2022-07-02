Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57624423
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 22:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656799612;
	h=To:Subject:From:Message-Id:Date;
	bh=h6Uue555xF+deal3dHKjbRb51tS+6aH39aH+Y8SjmKU=;
	b=ZjLNxaoUiy4Mnce3v19uKjY3dV/re+VWSXC4f+KUsPCwrlV7Z8LGvFkH3SCCnugC
	UPN0G93lnC2ZKpm0B95DTdaeXVeDWceNxr9j25rWXRZjLmOr4E+aaZITLuQThvmqsqw
	UN2VCsMlBUsEax3BI+lLKsTp5BY0q5zfypEmIung=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656799612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h6Uue555xF+deal3dHKjbRb51tS+6aH39aH+Y8SjmKU=;
	b=cwToq3FNYFAIt9g5SJtt9NEV6l/HqO7ubgNY+RVRgHC8ryYub+F0dSJmerEQd7dS
	rObUvkBNCvWEbZBO1ZhYBoQYbz+ne1vDmYXHg84bPGhfCM+MN7rfx+K2/cR0lrur4aS
	aIiPl1LplOkTEyB3sEwYX1hv3fM44ZPZfWr7H5HI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c0f3cd5d-29387238-256c-4ce1-90b6-e4631ea27a2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d26a2ba065b1bb8c0d1646bb7a89583ffddf6c436a2477330d997674c88cccc
Date: Sat, 2 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656799612
