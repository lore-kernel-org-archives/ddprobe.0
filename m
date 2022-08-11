Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86FB74A02
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660260652;
	h=To:Subject:From:Message-Id:Date;
	bh=vV78x0hgA4FRA/FLLogHARJLfwna8FNlGpJ6gycCEw8=;
	b=X2eMAVFjH2147J5Ynd66YRE5l7q+B0d9M/GyaM62k6v8uzcTW1Od1C1dw2ZmQwy3
	X60fH2LZ1OpjBONAAT2af6kaEUt1HZPuqTVPqIws+lAwOMDhlkwNb4pXuBNqVryU8Ei
	4FN1Dh/188ul8UZRbv8unBqst0HS+SPmhCLfjW+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660260652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vV78x0hgA4FRA/FLLogHARJLfwna8FNlGpJ6gycCEw8=;
	b=Y+sG7sFu+hGGum2mp5B8KX23XTIu2EYrwG9PA0REwhzT9qIofA1GFEdEG1LKtJDQ
	O4NIejP+5UvE5gLB9+yIuC//wnNd4rgYyKkpzQYJKPyW/3LmVTkE0396RKo2mQ3sgBP
	6ST0n+6FuVk6dSLuvXY8X0dufGpWRxeVG0egQ4Ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f3f160b-ab1901a7-8d37-43c2-b3e9-82ccfb2483e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f96215a7b2176ff63c49bbe1cf984a1a4db871c242001312a8c8b30693a939bd
Date: Thu, 11 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660260652
