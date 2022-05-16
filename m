Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3365BEC5
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 11:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652700119;
	h=To:Subject:From:Message-Id:Date;
	bh=sjD1S0dmQyfzkTRfIWfiywLQk8WOXUCLTzXwAQhRGq8=;
	b=jaNRHDr+y/frNju9CFfNNFv4xjxPVuy+nE/AVThgtUBnFNsZ+ods12FLLNhWZObl
	LbAPDly0W3lPB/02ciMAKMwxzJbiwgkQ0NpKg6FFRoF5OcXMiSgVfnL/Rm8DMBrMeC9
	o3ZhVRcDYzN78lg92/cqcvMpdY/J0IYC6x/LsxXU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652700119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sjD1S0dmQyfzkTRfIWfiywLQk8WOXUCLTzXwAQhRGq8=;
	b=bHZrCtdt56ac0whx/8Z6xwB7WHnNRXwzYuGHbv9b9BPVJ2PDkA/z0UrnfndJfDk/
	R89JDJGGH6pup0pQ9xWLlZbGrJN2ZNs2PuSEQpK9NqYQnc+pdEyuuyDP4HjDFFNTJHk
	x7wkKYEdHsDLX/dCBg1rYKNjC8TrJu8qsgo/zct8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cc9a810a-f84bdf6c-2b35-4ade-a2d7-b851c39967b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01831c8fc644756cedd43a4cf3958a9e3b678f0f325f5d70e1d047853f8b1b81
Date: Mon, 16 May 2022 11:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652700119
