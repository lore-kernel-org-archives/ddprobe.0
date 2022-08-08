Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7021C7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659993052;
	h=To:Subject:From:Message-Id:Date;
	bh=vi8s/AqfHN12aUM/PmlLXu81E1HtECG6FaAQP7G4Mn8=;
	b=fqtNRUAR+NVNXmx8psQQ/h0HZNQyaENOEtbF8ZioRUJ9Xa4v+4cWnF28xGSwvrmF
	kVnKHAPXdVU8u2cWTp7JY6thlXEMZ/dybqeWvo37eIvZ9+UBSMKdDBP9SyIeoe4JB3z
	70U1+R5Ick9A1h4nTr9Ufzpme4LSVZYq1NOqHpk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659993052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vi8s/AqfHN12aUM/PmlLXu81E1HtECG6FaAQP7G4Mn8=;
	b=e/p3rMZ2N8Yv/8mAribFdZcsVsio9uyFIpOgYvY+SeE+nOqizlQrynq3dHqy2rDF
	KJZYsSv3tPcfX4+oiVpDT+HtDgesRBvHHDBz9tKa5jGtOcRuxNOguAhV9jq5wkL3pID
	kurTzF/Ge4Ex3ZTF66SFupcEzSp3aUHwR5ebFDls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f4bd61c-3e1766a7-4e16-4eed-a5e3-0b5b640cce13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d29f925437383179698156c3e73c18357a7c470353b25c7c15b63494d308fd9
Date: Mon, 8 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659993052
