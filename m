Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC7F7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645490784;
	h=To:Subject:From:Message-Id:Date;
	bh=ZihvAhz2IYB1gdDr7TPBVzyh/UdcNKq/QXZZx9a9wPQ=;
	b=cFaDfw4k4m9l+J7yYLW/xFdVnc/930AApxLn6fktEOYIsd06qqp7Qygbi+ELO6qa
	OZJ6/WZW8nAZRGx/4XduGuCO0to1U6KxUd6gkKNSXTKBhDwvdQ75PlceZHy1isDoo/T
	yg1tm93gLjaZeT7verdTyfBoqAQ+dMYcW0r1ekZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645490784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZihvAhz2IYB1gdDr7TPBVzyh/UdcNKq/QXZZx9a9wPQ=;
	b=dfHnfBFMCp+fHQkezV46/6+842vWC4i4YlOdf843bm43vBOl4rDJFb2UeqLRMkko
	4SjdTadCQLqjkJTkdJx0sLHA+sEPpaI3hJP+aig/4e6r/f2YlaUORb7snMtlNyAByFx
	ABvWouIENlM/9Wwn8vLlB1dAIRR5H099vuS6/3L8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ee4ca0b-5b63b78e-a16d-4ea2-8f78-4a95c4aa2f30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89dafe99290af4cab407a577c29c3f27613ef9026554bdf3681f57aa48cdaecc
Date: Tue, 22 Feb 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645490784
