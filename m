Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C41B17C9
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657847212;
	h=To:Subject:From:Message-Id:Date;
	bh=kyyIj/pP2hscOhqA30sALnI5XOLVSYb+Ffif7qBVS2Q=;
	b=avslDAUEPRZ+ng9e1JQYOudx8RzYFBHb0vtV4U4BYglmnd4rVT9bT8lPPeDCYRKr
	lbEoi41oNjuJOVaDx19aQnAONrn9wZifMoHSp+mxvdaT7/SXZUl06jU8AVekDEQWKhD
	SX+XaOBwAg55i8Va/uEqFE7kQ51Qs+t8hUdhwpKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657847212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyyIj/pP2hscOhqA30sALnI5XOLVSYb+Ffif7qBVS2Q=;
	b=i75Tv+UpKjJyr//S2ZRtvkW/ScZEBYvKeW9c/RFK4JrbXvfjDG/j3WfqyWgt+OuU
	yDThhoUjFRNkWSRCc9L5IGNc7hMlTpBqAPpGSa/pjih27tyJVXdJ2E17MPqrAYc5+AU
	Ntc1xCV7TU9TRejgJbvWcj/is605gR4yosHRkYtw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff64e903-8d19347a-7ff0-40f1-93a3-f8e263cb7faf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 975e7003bdc29774b4fe66e6c9f8e3efa30ce5fc73b9982c85a95f9618920e9b
Date: Fri, 15 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657847212
