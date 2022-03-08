Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7428B2F31
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646714484;
	h=To:Subject:From:Message-Id:Date;
	bh=MQMpUa5yok5LJ8ghKN0W7gHxlcbn72ONOVUD7ZGVBJA=;
	b=Yb7ul8iRdjzE1pZ7K1YeVETxGqDe3cdl4powz3ydrU0fJuLRuDOPn95A7z06uUfv
	xPZWlBcU+i0vDyLVwjrCLqiLL/kjvfd3H34AE6i+QGHUA+NNMXHLxamZzcGq6PwN1CY
	3pthFpE54jlmRPpSyhEoz80SG2fY5JJTHnQYGYnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646714484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MQMpUa5yok5LJ8ghKN0W7gHxlcbn72ONOVUD7ZGVBJA=;
	b=Vng+Mtng9uMZGJ03zwo/RMl/4fYFOZ5yjvt56wRgd8g6CdshmSmWmOzCPEw1KQMw
	TbTwlQloZzhG4cUJuGVxnh742NQcBZZn2u/RwSvc69Jdyd0nqeCk2K5T6+pxEPcz0v1
	x6T4VL4qgCJdVx2HCBMqqpfWFiI2kyAXnNImKPO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67d4f833-33dcd6eb-ba32-4a5f-bcb9-41a2196a96d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50925bec18b7f2386d87163aa7eff792a0f452ec39aecabf46eb0f91f6607e6d
Date: Tue, 8 Mar 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646714484
