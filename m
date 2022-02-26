Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DC438FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645908085;
	h=To:Subject:From:Message-Id:Date;
	bh=a/QfC14NubSCASdjyGKRTvlt4ohPwZ5TSE5rs6awleU=;
	b=gmPlesN4VLKZszO/TOKgvhToQ8zLWTYu/m9983g+UQuTG3V8FT70dK6Ups2iWpfY
	WxIm9HQgQ8+mx5jIEcwJVmMf9/OnJTjtMbCC3h08srBsTMv7bk+m5CDxqgnLrdIb0JW
	EqxdjDRjqeEIksmbf7kbOKW21YV79JyF4DLeJLPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645908085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a/QfC14NubSCASdjyGKRTvlt4ohPwZ5TSE5rs6awleU=;
	b=I/0ZqJIbTsbuK+A1rH5BchunmQoYCVBqpqGj1hVJjKxwMJnAva3vlXjAPrQJ6m6N
	5FGKEEXgWj9mmDxycF49x2y4Tlfk6g3dqsT9ZTrnuoYbXkq2mQJ/CLSHOO6gxlSaqr2
	JLUnBAd8KJEdWRiB5K5cWLBrPu9phqZJuY5SwTiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37c4485b-1206a1a5-4d75-407d-a36b-5007fc252c35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16b1fb2ac1ff8a8918807d581d35688be4be0384f2169526a0a96912f3810bd2
Date: Sat, 26 Feb 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645908084
