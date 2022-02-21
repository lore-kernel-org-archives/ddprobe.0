Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24A82569
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645462885;
	h=To:Subject:From:Message-Id:Date;
	bh=HMsTue7CaGr4JkPLHu3hf1lGzvETLD2bd/29kKNB1MY=;
	b=BxWJWDLPZz6wHdzz/Rw9CpcO8jb2npM9plxVUfsueEUG55j5XAq7UcBc1mRYXtvJ
	KA23W8TCgrETAegf51Tr1KdxbSw+Sl3g/CSOAI7F9Tghpcf3CRBRJi5ZfyUOYjuxEyc
	AmnG02olHQZjU67cNG0mQUIdmpThe2O4eMsNB/hc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645462885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HMsTue7CaGr4JkPLHu3hf1lGzvETLD2bd/29kKNB1MY=;
	b=AfYKZsh4tpDePyjsaF4UW0JIwaHUKVyDgx/d0jqjgWTm3lvZanB4YQgGbCHBsh+k
	xGJSqubm9FBVzXB8nTtlvzwTb8AZ+N+DlQ9NhETrSFuQpApEOiY0mAh4fpRB/wk5c9e
	xIE0OEMXSwzz7l6b6NdKB0gQ05xVOf8O6VgSiqyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d3b11da-d10177dd-b81f-46ca-88cd-51afbfe0f3de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3ab610c16717ebb6b65ee33fb6f8ff0e0f5a132b9d49a67793b36f857d61250
Date: Mon, 21 Feb 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645462884
