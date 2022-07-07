Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CE5368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657155412;
	h=To:Subject:From:Message-Id:Date;
	bh=ImhGbYPLq7OYvYAVg3MVJF9/M2rhBCUUTIOCCLhR8fg=;
	b=Lfc2Z0HqlSwUMfNtcP94YIpQt4h94IW+/q4fuHjEOgQWYUs3mwRTvu5HiH0dxMax
	loFlFoy+2OsHCR2RAHmnNJN4TRGydGsC46X5woNiEs3TQI3M8dEkIEUuf4FbQEAkaOV
	dtGzqNFWbrW33ASKhelF+yCRthXiEKKD//zVJJP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657155412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ImhGbYPLq7OYvYAVg3MVJF9/M2rhBCUUTIOCCLhR8fg=;
	b=I9JE37P8nzlyzFsIdr23hA7DQOpVyLiJynIARlinqYMbQy63RxPj5eccAsI6WeNy
	CjE5qP99Z4rzj2/uRilpFZ6Wv+l3G9fIFZ8Z/WuxhXH8ovhXY7B9X6E+YTiYVGwxQcq
	Uu4t3b8rnT3tCOXd0Ok+zSBi+FJper2Wk7xkfXyg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d628e199-06d8177a-7b4b-4d22-9de3-abf12ee69f06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92ff4cdb402e4b17a8312a956d91b527f4aae33fd9ac1eff72997802767e9572
Date: Thu, 7 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657155412
