Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5FFA44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 07:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655796539;
	h=To:Subject:From:Message-Id:Date;
	bh=aTRIod4aiLey2ikNYc8qeGchZoIemSjMcYqUZTvc7vI=;
	b=bpFA+nwTrhJANk56+DsMxUhxI+y9YCk7/rkoVhhWaAhlpHdgN5TvU8o8VObUAZQO
	imL+nrgXrAGwVylrkohlDRbuAWuj5PyRt3kUoS1GVwtQLVuYL/P2L71fxwmDXwo5RfT
	Who2QRdxRXshhjBwV1To75OTVHS5TfuVr9WnpqG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655796539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aTRIod4aiLey2ikNYc8qeGchZoIemSjMcYqUZTvc7vI=;
	b=A2qYY1+4/EhLv8nJY2ckPICa3l2+Q6OwHhdQpUe8g0Hd0LG/IoggZqk8jLDUZvxS
	pF5VCwiYFti1WY7dm1phyY4yldPakr9MWq4CWqHalUMlDW7xN5oBjSkzUqMGsIk8vTi
	rlWX7jq28el0AnZGC90koSENZJ1LDkvqkLsSP4I0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181852a1f6b-98f489e7-3b51-42b7-9b9d-e638943b9e1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b59b2b1e153e5e9f91f05e1b0ac1e1208c989e62f72290a7f62f2746940c336a
Date: Tue, 21 Jun 2022 07:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655796539
