Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACD7F187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645022184;
	h=To:Subject:From:Message-Id:Date;
	bh=Qq08u/JJX1eyu9gxH1lynts3ix4q5P2LRHfVwlDBFJA=;
	b=TUpi+5lFZNJ43TbI+tpQhYXW/mseQwYgdWCdo2mkmy2JlUZA8AntSEFnmLp33osg
	j6lLFAIUdKMwimHPifoPNFYkV0kHe1Doa8aUJ/0CPYkQBZ3m+qD8KxTiW7iF6pnTgAR
	9JJ9TnAb/XRabRRWppc6ZwYTEJlzTS5DQBjoMaTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645022184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qq08u/JJX1eyu9gxH1lynts3ix4q5P2LRHfVwlDBFJA=;
	b=kbkmTbpAq7VRQr/IOHQlFnjDWhR4habLclz/IG0E7el3VKFyBKrXz8m4r2p75UT4
	MxjEoUwXgQ9oxR1gXbUtJgae4UH0wF/H3LM0KnxJfvdi7pbk8S+AlBjmuA8UMHkI17L
	lqXgWhi1+u2IzazDjWxfHY4wrtJXpYv1JgaQA30I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02f6853e-8a8dcc73-6bfb-4c9d-b9f7-83fcb1e4600e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e36319e783b3e085a87fb1f5edad756613949e8c7cd86adbb35fcc7b4551556
Date: Wed, 16 Feb 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645022184
