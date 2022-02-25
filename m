Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7963B1FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645790785;
	h=To:Subject:From:Message-Id:Date;
	bh=J4291fOCcZIKryYApol5qnSw00o61VfCguvBo9LA+ac=;
	b=eqZ/sP6f5mqFwv8syv6MqDIfkUZ/NQ5ydMKoX3I5SKm+WwCAYUrya5OKBQE11DpQ
	i7tSP+tRyHlnGeUzflsi68yyqMoDRRNGxb1UlGKv0PmtyLLrZpQ2gs6buAsX4B+/JaX
	6x02975WIBMa7oQZKODllPxG8N6xkbdI7OoaFgD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645790785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J4291fOCcZIKryYApol5qnSw00o61VfCguvBo9LA+ac=;
	b=gBV+vQ14LEAASNSDtGz0Ab5YR2vH8Gzq+RDVa3WpgLFrmOL5Id8X2IhL/bHGX+Xd
	1dNRUYTE4LIcXtrI8YCLXZUt3Ne3t1yuSx2/2tRyAh9SUSJv8frjRn4LyN6+S/+fmOi
	pFVMhIKzIFjyu6FkG1AReTKllGseo9yNXbW4YvmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30c66d0f-886a2663-1767-469c-a348-b5ad58ab685e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acd5d15e720de6d8215fa5a5adf725167a1a0912ed00038917f772b1f125b594
Date: Fri, 25 Feb 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645790784
