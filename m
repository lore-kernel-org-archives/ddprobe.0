Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337E47B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661344852;
	h=To:Subject:From:Message-Id:Date;
	bh=7GT3R/o5t/XNRdCdm/wY+B+zXjli8rGnQ4Gep3331/o=;
	b=OiNcX19iaGkmFdwrgSIzLw7n9R8/Fs/jP83Xcq+T0INZszOsQZW9gVoks0jbvyc7
	Ouip1FPDMDWvoZ8P6i+dzaoJ4Op5S+Rz7i68PHGqsJLI4AC9db1+D4jT34PA/PpxPq3
	KYwKE6wENjtVHrD88LpQKbtmR3hWN+H59OlBUATw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661344852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7GT3R/o5t/XNRdCdm/wY+B+zXjli8rGnQ4Gep3331/o=;
	b=T6L2+CuSaSGTlP0gTmfMUXyFMV/a+aiZwqj/XeS3w4PuDkaM5ceIa6eUXBUUlf+C
	BGWb9Uv3E4Hdmxe6KxFgvBb9ZOXkifT2MJsy+FP04vKrg6CgLJUM6Us7pHLieYgWKPY
	wOz/EprmpmQ3tl51YhmMyxGoCuZtxw9vWsxSDgpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cfdeaa4d-e87f3425-9eda-4c25-bd9a-b4dd32934c71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db1c57329ccf40dccbe40c5011f86786ff8d6f6ede07e0e45e0c95bc1665bdba
Date: Wed, 24 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661344852
