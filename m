Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4B97B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 19:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652126398;
	h=To:Subject:From:Message-Id:Date;
	bh=ui+paOBC2emjcBe69uKiDPlfm3mz36hnDBB37eDLMik=;
	b=XoV07Eedm8XQTYMzptzT/KPEYzUTrYTGRKgFlQ+wHv8dhQFEJ0ZNtXMlI+LZB27G
	/cG5MoCHV3v+EQY0kyL/MAYv3t+7hxq4fZgO5qFLYNEmUD8MSku82mNW8SG85Z7RckV
	E822xjoLYOyx0Q3JN/rPr/A1LpRF+kCLEjbqEMA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652126398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ui+paOBC2emjcBe69uKiDPlfm3mz36hnDBB37eDLMik=;
	b=dYRYqCnJ0EvM/4ixW/+cLyiCWtHxn06DA8UtpqvhxQYlGNdBVuxKep2O8TuVYmpA
	fiMuudjg4UVoGYVBYu+Oti+Y3zS0kRwuYFM7jNoJndNnQ4yGprnXx2QvpnZzhryi1HW
	2QAx+cswxV1TLyRTwdyc9O1aSfZpy13fsGepfu78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aa68377f-381b9b99-be49-4a71-bcc8-bc12ada17e8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 679d8b8dea0d14a4fa8a8ac7bda40b5a7daf44215158b5fc9ab6d12a52386fae
Date: Mon, 9 May 2022 19:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652126398
