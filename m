Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA86E7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646968584;
	h=To:Subject:From:Message-Id:Date;
	bh=Wrzvze9xs7chmxvyL5ADcpScOljxRfeVYNKIMBYzhg0=;
	b=YlTI1FwnzsXKHjJXQnGHsBtXJTQmOsEJNs3A7DJMx2de0+aNxEzc/OFGdyxJFBdg
	/fuV8/Yfq/Hyhufl4sQJ3IFW4SrQG7K73AfhThBsYNtPTFOQ86qp/yiI4UhXYoJYsHL
	MS1J0TP2G5iOwgcbZ67f4ZDwTfhSFVV9NX4w9WG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646968584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wrzvze9xs7chmxvyL5ADcpScOljxRfeVYNKIMBYzhg0=;
	b=dCL3XynuB7e7JSaj9dPxHTQu/25euRir6+7dSXQLkZiThamb3qm8OIx5V7PgYR1H
	3O9AD+/rZacuv4Od6G/AoXw6RMnfMiYSmLIpkwxWhq0C5kCown0V5qTNhcsvTzcNKy+
	GYQJFvF2r98xU426RWqdedKbyLsru5GN2xrBDkrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76fa3a0e-c186c29c-1f8f-4259-af24-dc3cda9baa77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b9cfeb7f363a966df2d340d00cc71b0c634cf7021fbe1367f37402a36749387
Date: Fri, 11 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646968584
