Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3139F7A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 04:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650860758;
	h=To:Subject:From:Message-Id:Date;
	bh=TDolCO2eiKcOyVk6HNd5N+snLtf94J/TX2FAKA3cl9Y=;
	b=DsXOoJnDnS+CEWhUFIGPjqD++MG+qfW3fvC1WstPQAlGducGbFDXwxxb8jIZ8DT+
	JwzJkvrN9ezw1/Pg+897y6rFNYmzOjIT84B/g3mnGYuZmrKnLPRcRNj4SH6ZrLVSCYj
	lpx3h1LWO7bopPwPlrJaJvvMxBAbQLBtlMD1ICuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650860758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TDolCO2eiKcOyVk6HNd5N+snLtf94J/TX2FAKA3cl9Y=;
	b=LYmI6rb2sugr1Aj+1cliBIjnaDhoOtUqrE5DBJZgWa698TBGvlx0IfwBz3PBcN+U
	puVKpxJzPND0CpQPTzctuWC/m8j58aILddKIimoK8Zshq2pSh5ViJL52nUk9SyzK0en
	8SLC2qESLtBRqUoWT2YQjN/GvkuyeG6LZwSjhqrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805ef81591-8465b421-6893-4c54-8772-189a595d0b83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a903a187dc3eb3ba140fd50655227d1a07f54639a9fe9e6640a04ab810ba6dca
Date: Mon, 25 Apr 2022 04:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650860758
