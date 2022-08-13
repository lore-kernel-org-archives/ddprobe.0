Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E857E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660406452;
	h=To:Subject:From:Message-Id:Date;
	bh=7vXkAv78qJ55s0P7SfT124Rm7MiQYH7w+rUCIxnIQLE=;
	b=RW6FFFz/IM8jdROqUACJBoQSiyhflMgNlACkGePR9G5o0idkK4AVh9Je9zJ/tS5R
	9JVgp4VPJVl6zEgI1XAko0u8QZUSiG5TTrWvZuh6MUtNrFMifCjoGdYEOUeb3DGqkJW
	PvMEKnJLBhQPpy7l7c4uRSrVIhPuNF19ZaP31/0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660406452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7vXkAv78qJ55s0P7SfT124Rm7MiQYH7w+rUCIxnIQLE=;
	b=YjO7G/RMQmg3XQcoyrJyLg1ggO9EZEOdYBvt2+bUdp/nKnGtSjWy7Y+f13UImHjM
	AtLqIWf9eE+QTtfEon/w+PxMBnW7Mheys1hU9AAhCN1lPCrFw5PQdM9zUu7PsskbG8T
	q2IELUbw2s4YhlD1UcBZNbjDFzVzB/XAs9ElYC0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018297efd189-efa1bfae-abc6-484c-94e7-44d870b3d7c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 076ba7552f9baf6cdeba9c964e13f709b34a1e3d6c77ad7d75706fbf872348e0
Date: Sat, 13 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660406452
