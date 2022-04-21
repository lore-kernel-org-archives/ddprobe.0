Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E17F1876
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 07:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650526378;
	h=To:Subject:From:Message-Id:Date;
	bh=xVAdcfzyBELMUCjtYlK8cmMUDfSYNNpW46nd79bDXgE=;
	b=X0dvcf4NmTSPoes5nDGByrfY5tPGXUNIjNWmbMfUxlxbZrYstM2XJbt5p4l4Hw7C
	q19ZGzeauNC+M5etzAbHZGnjX+ujJDJMoaUCx3qKVfMaJdZcaVT4Zrdek0+UPch9c6m
	zshrK/DJ7Wgx7SHCWZ/rP1SeToQkUYrYx5zYqSWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650526378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xVAdcfzyBELMUCjtYlK8cmMUDfSYNNpW46nd79bDXgE=;
	b=PgoUJarLfuvQgHdcrS2Xydi93ej97xVFrnXH23KRpYYZzR8lFdTKDfn6dBtO/8uy
	PLOFQoJuNhvfXFCkbUtVtTnF6cYhuVjPqoTbFvy44iGXc9qciwJWMf1HaU56JOD7uaD
	ZWHas5GjqX5DVy3sYQQozsfOPpLIYxaFms3xEXJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b09d92a-ced3f9fd-5c17-4d62-ab9a-b568c7a7f95f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d9710d1be73dc8120081a5a1f9575c58eca004190440e5fef041f4b539b6415
Date: Thu, 21 Apr 2022 07:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650526378
