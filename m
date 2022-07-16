Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EF015AB
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657991212;
	h=To:Subject:From:Message-Id:Date;
	bh=nw+X6aF5WFhVk3YEPweGkC+IGOaWj+h/CvYGIleIZHE=;
	b=Y1O6ayKBE1kTlGznmlcymEcxeD4tRupTQ7gW98TOxJu5m8sDxl/ELBJS3Fh5XH8x
	QZfCJoztrVsJOrudUwcLpNBVBZ/LcwRPXWYDGlhHZjYRa+yh9fLL7so34QkoBAwg6ua
	dtfaF4aTnPVQitrrMbTrYyIRqQhTY0v2T83Ygh5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657991212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nw+X6aF5WFhVk3YEPweGkC+IGOaWj+h/CvYGIleIZHE=;
	b=Cq4918BnG8O7EtKhITKdtlK8l8iSDTqdsq0/8HP2WTCuOAmlllJ4WHh91rxzNTCY
	xxO4z2STwuw902AUqcT29kNt6dBzCXlSXltoxPE4Gwxxl+VCalNRA5nShLUuJIxEtkv
	iFI1LkJLJxA9Bi4WY0sNcXN1QCjYd6kKFq3bWHCA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207fa2d34-9e1a92c5-8501-4c98-917a-d32f06a314fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d4c57ab655357307388add24ef1276ab041d7f4ecb95175f56d1b7c855e7b7b
Date: Sat, 16 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657991212
