Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDD610E8
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660575052;
	h=To:Subject:From:Message-Id:Date;
	bh=y9h5nOiX5zMUn2n1n8rAf7VSajFAgcjxVd0mCO/p/4w=;
	b=U46CAGiQUSWXjgq4+O7gD/S709kSrcZYkXjdytk1CUaSf7YhSMnWC+dS4MV6ca6L
	urBxfh4Oe9LryjfkSuDYB9/SLeLCFVHQPG6rsba44mX7JTU11N1hs5jyF43YA+e/MuM
	MI2uVxiFQtcUxwUu+q62WFIrF3j9ZGZJtXNiyct4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660575052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y9h5nOiX5zMUn2n1n8rAf7VSajFAgcjxVd0mCO/p/4w=;
	b=ODZx6JoKUWF9WCzQOey8T4pqSijZxJ28aJNZnTmOWPZMvNdNOOdeQE6OT/hoORTs
	BA4aANFMg3DWok/I8JfxwJW5qJ4UCR2PCtowGYCwFnNA8cki/v4dXMLicyz2d9bkgk7
	nMrcVYLXjUUOW20wVhQbtr10eqkayQSaUXd6TbqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1fc733a-42a5d23d-e70c-4108-ba45-1f83cf8d0bba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af4e9e6dc0adf6831038719958f1f8e648ef3200b83e6d35efe7c0c2ed0806f5
Date: Mon, 15 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660575052
