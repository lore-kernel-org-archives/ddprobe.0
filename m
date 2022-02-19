Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEC455A7
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 19:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645298784;
	h=To:Subject:From:Message-Id:Date;
	bh=JVSIupfh6mPCA0lHJ0OcHPCFqgEXynSv6nlwEabV8E0=;
	b=ehmRgekISGZ9hyli0Pb2Qy6RHmvUJnjHkKo9utLD1IWXbT6/6C9Px3lScS8OF+pd
	mec7MSlQ6Gt5BKSvy1cN4beF44LHxzhdOwbVZuTaOKqYL0DtLsBNr0gW5W4cxIBDaBV
	wKaiO562ODs8b+BVJe7gghvEbyHQ2G4UllOTjSro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645298784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JVSIupfh6mPCA0lHJ0OcHPCFqgEXynSv6nlwEabV8E0=;
	b=GJUgL8KIuExnuxZbL1jk9AVOVq3u92PusQXicl+ibtPRym+uTx+TH15zqBNC1jHz
	LBni+Eoi99xf7uCirafyB7hwG88ECCuSrzEWlvxlFJq0uvPtUo8AnBW7pZzbdo/HQ6N
	BSMtOD76PHp4MERKo2tvN7Iacz7kkBBX0kBVqn1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f137319f9-4955c671-c953-4d53-8544-3754e1c63677-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aea70e6b2f454759b816216f4e96d85e83bcabbc2e9c2542886a483cf222148c
Date: Sat, 19 Feb 2022 19:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645298784
