Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182B565C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 05:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658037412;
	h=To:Subject:From:Message-Id:Date;
	bh=qPbNrjZ30eVWVI/Vj9xjShCNcaNAN4wgBIL8XbhQsqM=;
	b=B/jfZNI4ed0ajffWL7SN500Lw+YGxFE36UbZF/SpM32oUFXzTkRNHJ9KUMBnm/i9
	/E/Vbfa145RBiVOCUA0LfLF67Rkr1DoFS1VDabKf/swvmKVShhNWeNvULx9PtbkM1i2
	b9j46f2bhnFzIpcW5JoOvHehg1fanvcVVwkNjJWM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658037412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qPbNrjZ30eVWVI/Vj9xjShCNcaNAN4wgBIL8XbhQsqM=;
	b=b3dVn0Yd1i+ZhRczrDFtGTdzVV8ivqQYCb/Efa/Un0bUKQhcBz5rooDx+2K+l9k8
	tqHUIssN5GkaoiAHLuSPvocqfJF3kv15diCQsZ/vv7dFZGqc2F+n5jajss4TfwGD7jz
	xAF1WtXv1Ca4piSH1UkYqPEN+N/51Zv4fhp+Dax8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820abb21f0-eb514a08-600d-4a48-8196-9db87c6622f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 482eddf544e18076d5d7ac33fb33d3c02969530434dc9bf33f40e3fad31dff35
Date: Sun, 17 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658037412
