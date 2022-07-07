Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B00362
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657177612;
	h=To:Subject:From:Message-Id:Date;
	bh=wH5CBAApVjPDb7KT4DS2xzXigv+gbVcDsvU2tdZLv6M=;
	b=Gbxnzwekl9evlSetZ9N3cqTDQZe+iy4mnTCTNYg6krHcWzFf9d9voCtLJfjh/E78
	8/9zqCMBGG69KCHUx/KgUMGz2IotWyVcAe3pLr4S76O+39Q2pg1rmdrhdpiArY6BU+1
	Hf4Y90UytlR+GMF89TeIWF8wCYP3i7JyIdUTl3hQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657177612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wH5CBAApVjPDb7KT4DS2xzXigv+gbVcDsvU2tdZLv6M=;
	b=OkY+dGpZpn32wYzEKGNAkqCE8iMcxoYBvUf07HYkGbdSUXfqFErUrpUqYBl7imYV
	9DhzhmXqvm3qovQ2tuEFCmIS+oT8MMp3ikSqhUNzMVjwHIFU63AAa6DDC56VrL0PAb7
	XoHUig5jDK5vkrR+jEd49hHSKjGJySDBZx+1D3EY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d77b9ff9-cddaa6b0-c45a-46e6-8423-3a17f3749bd9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c1d2e55764f36fbdab20d22cb1ccce4417add7a86a27d3cf3aa6b8eba463194
Date: Thu, 7 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657177612
