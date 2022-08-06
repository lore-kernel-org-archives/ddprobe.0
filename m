Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E1AEA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659748852;
	h=To:Subject:From:Message-Id:Date;
	bh=MUCvqh+Ckry2VTzy9diPHAA4wCQTToqX3YzGOdiWD2w=;
	b=GadmWN0zo0sAc6sIM7U+Bh5EEsJhGCMvrx5MYKsGkmJ7qR1QVWpDCEWhveR9bP0V
	p+C0MRGukMzwFr+Bsu5NC4uithDDfG6eJ0NfTPUiWSqU7R0P3bc/pmsdGShPfj0/Jhr
	i1RkX28U/LP+g9ilcUSA3FrzO647WMml8s4tpyYs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659748852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MUCvqh+Ckry2VTzy9diPHAA4wCQTToqX3YzGOdiWD2w=;
	b=N2gcL7qSt3+d9gaOkz+GIJv5NX3QxkQutHFQkt+g7OntWzM7BfBACjyckrElxAM2
	q+UDbRBrCmaFku9W0dKy7YrheiM/F+P4kPOfCA+UGHD0/SmF7K8nNdkXrfuhC4zkJ7W
	0Y8l+oBmzsoO2MEWYxrDr7gw3YMZd4cfI6uqtRlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270bda359-ae8c8f21-0db6-4577-8e6e-1064159d6aff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b743672b8581da496a341ba83a6ec77917cff69d72fcd96e8272204e3b44858c
Date: Sat, 6 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659748852
