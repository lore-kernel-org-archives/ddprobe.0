Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61570290E
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659733252;
	h=To:Subject:From:Message-Id:Date;
	bh=O0mrW/vFN0ks7X7Thu1jDz8OoP+6G1+66mUTamsVFZQ=;
	b=hiTk1UMs2karw6TFRzxRF0L3lArL2SNhRTC3pSI+prWcrHop0i/K0yIXolc36PZE
	DDC5TshQA4gCjrCiRMhgcHDZh33/PNdD+cVbs8x1NilEpKVM7yYsadOCKVeTqOlnI1a
	uN2vrVQIhmkrBV3EGJ93FZ/15qJVfgv9EbuZGmQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659733252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O0mrW/vFN0ks7X7Thu1jDz8OoP+6G1+66mUTamsVFZQ=;
	b=C6E9yMx/kf8fw+NyM5Km0TeoaX9ZB6u1Skipunug0Z2wOVkaZ7+z4SfJ/HZiumSB
	/kzh8fU7b44ZjAOUQL7XYjjKL096VfqRnYMH6XwBJe9tyJgBvd4oPjw0r00UHQIcvpL
	jNaTrSQjwTl4dsPzsi1iWgYpqJ7GqYUV0OSnwS+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826fcf9a3b-ac5bc785-d461-457c-99e0-8e30ae05709d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0acdedc33460633d56512828174e193a5dc992c2e3a2fd79891daa805906aef5
Date: Fri, 5 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659733252
