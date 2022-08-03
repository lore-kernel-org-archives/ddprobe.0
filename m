Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D3646BA
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659559852;
	h=To:Subject:From:Message-Id:Date;
	bh=x9rzok9fXAqE76B99JMnE/a2oE2rlXowXrB+7/nvOeo=;
	b=a2GQMeRkeyM2eAH29bHiJ831DcZQZ0hb4M+PSG/uuljUp6TwCQlRqB1CaEiMhGqh
	RwsVNLMEd8IXrJkvbeWq+5iBvJUNpm5P5ROdbMJ8xdVKT6OIHsuJ8JLGAcw352bMD7a
	neN6JP0FRunJEZdDrco2wkfLrEaI4n6MB/OW+QZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659559852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x9rzok9fXAqE76B99JMnE/a2oE2rlXowXrB+7/nvOeo=;
	b=XQE3k+OtEZndt20fAeCt6lBCcHAGABE4AuNs9OnWqKSTkGKtvguayR+7oTSbRrjr
	k6CV/pFtrFNY/TqcPyWUXYXp6JCYrMdWIuymkqsNuTviDZD7n2Qz9OQi3l5NuFRVFH9
	G5tsX111C/T+TCan5ClcwtiptVPBShKQ0Je6luaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826579b9fa-4be210f1-28ff-4476-a988-aa551ad1056d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f45697b6e496368288d5d015fdf5a70ff138ec847a5e04a6d9db4ca38a64440f
Date: Wed, 3 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659559852
