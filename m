Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3EF815BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646810485;
	h=To:Subject:From:Message-Id:Date;
	bh=ilWYNGAes2QfJB1bETRvEtXtDoH3gBCH9vrAKOz+n+Y=;
	b=fQ3YAUpOSB/wT3KfAX4p9ZiHQ5konA0cmHFiCYbk/tJ0AR0APzi4H33gl8vEVQSo
	NR+qYFMfH6C5HW4PS70DouFX7ncwzH7liR6KbSoLmEjLTdseoDxzplJ1fvDLtyxdXjf
	8hJhW5PYr2PsTOAZo4+LS+cY4/bpBNxnUd+zMAPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646810485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ilWYNGAes2QfJB1bETRvEtXtDoH3gBCH9vrAKOz+n+Y=;
	b=BSfIunVv731Zp6jRek76XOyKWmhQHz8oj2Y+t9ifL2T4xq2GMcl7Hg8yoF7D9Mys
	zRfHymyLhoVhzZHoZbf9YUAE2mCzLczQFAGiLTZdPDNNq9JRbn8b5rtdLI8jmSr+ynP
	+GUjxchSPcNs9ST9VgpKovCbe0rE5u/if887QMlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d8dd001-5a85e245-3bbd-4dc8-807d-e9b00ee4b59b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67bf9cedd79f01242edf6ab58aea6895b497c84ec80c10e9269a1d58792c3df7
Date: Wed, 9 Mar 2022 07:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646810484
